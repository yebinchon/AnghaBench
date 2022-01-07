
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {unsigned long pfn_lo; unsigned long pfn_hi; } ;


 struct iova* alloc_iova_mem () ;

__attribute__((used)) static inline struct iova *
alloc_and_init_iova(unsigned long pfn_lo, unsigned long pfn_hi)
{
 struct iova *iova;

 iova = alloc_iova_mem();
 if (iova) {
  iova->pfn_lo = pfn_lo;
  iova->pfn_hi = pfn_hi;
 }

 return iova;
}
