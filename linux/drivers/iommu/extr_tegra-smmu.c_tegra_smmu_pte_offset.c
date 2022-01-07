
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;


 int iova_pt_index (unsigned long) ;
 int * page_address (struct page*) ;

__attribute__((used)) static u32 *tegra_smmu_pte_offset(struct page *pt_page, unsigned long iova)
{
 u32 *pt = page_address(pt_page);

 return pt + iova_pt_index(iova);
}
