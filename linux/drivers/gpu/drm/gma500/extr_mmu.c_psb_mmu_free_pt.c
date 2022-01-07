
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_mmu_pt {int p; } ;


 int __free_page (int ) ;
 int kfree (struct psb_mmu_pt*) ;

__attribute__((used)) static void psb_mmu_free_pt(struct psb_mmu_pt *pt)
{
 __free_page(pt->p);
 kfree(pt);
}
