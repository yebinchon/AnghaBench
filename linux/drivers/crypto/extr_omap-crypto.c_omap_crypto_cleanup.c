
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct scatterlist {int dummy; } ;


 unsigned long OMAP_CRYPTO_COPY_MASK ;
 unsigned long OMAP_CRYPTO_DATA_COPIED ;
 unsigned long OMAP_CRYPTO_SG_COPIED ;
 int free_pages (unsigned long,int) ;
 int get_order (int) ;
 int kfree (struct scatterlist*) ;
 int scatterwalk_map_and_copy (void*,struct scatterlist*,int,int,int) ;
 void* sg_virt (struct scatterlist*) ;

void omap_crypto_cleanup(struct scatterlist *sg, struct scatterlist *orig,
    int offset, int len, u8 flags_shift,
    unsigned long flags)
{
 void *buf;
 int pages;

 flags >>= flags_shift;
 flags &= OMAP_CRYPTO_COPY_MASK;

 if (!flags)
  return;

 buf = sg_virt(sg);
 pages = get_order(len);

 if (orig && (flags & OMAP_CRYPTO_COPY_MASK))
  scatterwalk_map_and_copy(buf, orig, offset, len, 1);

 if (flags & OMAP_CRYPTO_DATA_COPIED)
  free_pages((unsigned long)buf, pages);
 else if (flags & OMAP_CRYPTO_SG_COPIED)
  kfree(sg);
}
