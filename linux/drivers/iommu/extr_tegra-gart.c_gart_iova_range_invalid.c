
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gart_device {unsigned long iovmm_base; unsigned long iovmm_end; } ;


 size_t GART_PAGE_SIZE ;
 int unlikely (int) ;

__attribute__((used)) static inline bool gart_iova_range_invalid(struct gart_device *gart,
        unsigned long iova, size_t bytes)
{
 return unlikely(iova < gart->iovmm_base || bytes != GART_PAGE_SIZE ||
   iova + bytes > gart->iovmm_end);
}
