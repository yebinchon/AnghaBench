
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int dummy; } ;
struct talitos_private {int dummy; } ;
struct talitos_edesc {scalar_t__ dma_link_tbl; int * link_tbl; } ;
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 int DESC_PTR_LNKTBL_JUMP ;
 int copy_talitos_ptr (struct talitos_ptr*,int *,int) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 scalar_t__ sg_dma_address (struct scatterlist*) ;
 int sg_to_link_tbl_offset (struct scatterlist*,int,unsigned int,unsigned int,int,int *) ;
 int to_talitos_ptr (struct talitos_ptr*,scalar_t__,unsigned int,int) ;
 int to_talitos_ptr_ext_or (struct talitos_ptr*,int ,int) ;
 int to_talitos_ptr_ext_set (struct talitos_ptr*,int,int) ;

__attribute__((used)) static int talitos_sg_map_ext(struct device *dev, struct scatterlist *src,
         unsigned int len, struct talitos_edesc *edesc,
         struct talitos_ptr *ptr, int sg_count,
         unsigned int offset, int tbl_off, int elen,
         bool force)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 bool is_sec1 = has_ftr_sec1(priv);

 if (!src) {
  to_talitos_ptr(ptr, 0, 0, is_sec1);
  return 1;
 }
 to_talitos_ptr_ext_set(ptr, elen, is_sec1);
 if (sg_count == 1 && !force) {
  to_talitos_ptr(ptr, sg_dma_address(src) + offset, len, is_sec1);
  return sg_count;
 }
 if (is_sec1) {
  to_talitos_ptr(ptr, edesc->dma_link_tbl + offset, len, is_sec1);
  return sg_count;
 }
 sg_count = sg_to_link_tbl_offset(src, sg_count, offset, len, elen,
      &edesc->link_tbl[tbl_off]);
 if (sg_count == 1 && !force) {

  copy_talitos_ptr(ptr, &edesc->link_tbl[tbl_off], is_sec1);
  return sg_count;
 }
 to_talitos_ptr(ptr, edesc->dma_link_tbl +
       tbl_off * sizeof(struct talitos_ptr), len, is_sec1);
 to_talitos_ptr_ext_or(ptr, DESC_PTR_LNKTBL_JUMP, is_sec1);

 return sg_count;
}
