
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int length; int offset; } ;
struct omap_sham_reqctx {int offset; int sg_len; struct scatterlist* sg; } ;


 int DIV_ROUND_UP (int,int) ;
 int IS_ALIGNED (int,int) ;
 scalar_t__ ZONE_DMA ;
 int omap_sham_copy_sg_lists (struct omap_sham_reqctx*,struct scatterlist*,int,int) ;
 int omap_sham_copy_sgs (struct omap_sham_reqctx*,struct scatterlist*,int,int) ;
 scalar_t__ page_zonenum (int ) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_page (struct scatterlist*) ;

__attribute__((used)) static int omap_sham_align_sgs(struct scatterlist *sg,
          int nbytes, int bs, bool final,
          struct omap_sham_reqctx *rctx)
{
 int n = 0;
 bool aligned = 1;
 bool list_ok = 1;
 struct scatterlist *sg_tmp = sg;
 int new_len;
 int offset = rctx->offset;

 if (!sg || !sg->length || !nbytes)
  return 0;

 new_len = nbytes;

 if (offset)
  list_ok = 0;

 if (final)
  new_len = DIV_ROUND_UP(new_len, bs) * bs;
 else
  new_len = (new_len - 1) / bs * bs;

 if (nbytes != new_len)
  list_ok = 0;

 while (nbytes > 0 && sg_tmp) {
  n++;
  if (offset < sg_tmp->length) {
   if (!IS_ALIGNED(offset + sg_tmp->offset, 4)) {
    aligned = 0;
    break;
   }

   if (!IS_ALIGNED(sg_tmp->length - offset, bs)) {
    aligned = 0;
    break;
   }
  }

  if (offset) {
   offset -= sg_tmp->length;
   if (offset < 0) {
    nbytes += offset;
    offset = 0;
   }
  } else {
   nbytes -= sg_tmp->length;
  }

  sg_tmp = sg_next(sg_tmp);

  if (nbytes < 0) {
   list_ok = 0;
   break;
  }
 }

 if (!aligned)
  return omap_sham_copy_sgs(rctx, sg, bs, new_len);
 else if (!list_ok)
  return omap_sham_copy_sg_lists(rctx, sg, bs, new_len);

 rctx->sg_len = n;
 rctx->sg = sg;

 return 0;
}
