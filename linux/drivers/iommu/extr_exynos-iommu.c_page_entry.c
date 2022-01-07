
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_pte_t ;
typedef int sysmmu_iova_t ;


 int lv2ent_offset (int ) ;
 int lv2table_base (int *) ;
 scalar_t__ phys_to_virt (int ) ;

__attribute__((used)) static sysmmu_pte_t *page_entry(sysmmu_pte_t *sent, sysmmu_iova_t iova)
{
 return (sysmmu_pte_t *)phys_to_virt(
    lv2table_base(sent)) + lv2ent_offset(iova);
}
