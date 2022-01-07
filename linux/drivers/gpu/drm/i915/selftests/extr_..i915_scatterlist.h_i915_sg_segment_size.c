
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGE_SIZE ;
 unsigned int SCATTERLIST_MAX_SEGMENT ;
 unsigned int rounddown (unsigned int,unsigned int) ;
 unsigned int swiotlb_max_segment () ;

__attribute__((used)) static inline unsigned int i915_sg_segment_size(void)
{
 unsigned int size = swiotlb_max_segment();

 if (size == 0)
  return SCATTERLIST_MAX_SEGMENT;

 size = rounddown(size, PAGE_SIZE);

 if (size < PAGE_SIZE)
  size = PAGE_SIZE;

 return size;
}
