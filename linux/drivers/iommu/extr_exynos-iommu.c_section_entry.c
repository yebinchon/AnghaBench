
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_pte_t ;
typedef int sysmmu_iova_t ;


 int lv1ent_offset (int ) ;

__attribute__((used)) static sysmmu_pte_t *section_entry(sysmmu_pte_t *pgtable, sysmmu_iova_t iova)
{
 return pgtable + lv1ent_offset(iova);
}
