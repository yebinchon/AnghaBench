
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmmu_tlb_flush_all (void*) ;

__attribute__((used)) static void ipmmu_tlb_flush(unsigned long iova, size_t size,
    size_t granule, void *cookie)
{
 ipmmu_tlb_flush_all(cookie);
}
