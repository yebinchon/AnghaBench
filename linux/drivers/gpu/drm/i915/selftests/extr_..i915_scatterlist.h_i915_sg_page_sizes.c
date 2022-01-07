
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; unsigned int length; } ;


 int GEM_BUG_ON (int) ;
 int IS_ALIGNED (unsigned int,int ) ;
 int PAGE_SIZE ;
 struct scatterlist* __sg_next (struct scatterlist*) ;

__attribute__((used)) static inline unsigned int i915_sg_page_sizes(struct scatterlist *sg)
{
 unsigned int page_sizes;

 page_sizes = 0;
 while (sg) {
  GEM_BUG_ON(sg->offset);
  GEM_BUG_ON(!IS_ALIGNED(sg->length, PAGE_SIZE));
  page_sizes |= sg->length;
  sg = __sg_next(sg);
 }

 return page_sizes;
}
