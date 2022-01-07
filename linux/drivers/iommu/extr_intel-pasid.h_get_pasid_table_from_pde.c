
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_entry {int dummy; } ;
struct pasid_dir_entry {int val; } ;


 int PDE_PFN_MASK ;
 int READ_ONCE (int ) ;
 int pasid_pde_is_present (struct pasid_dir_entry*) ;
 struct pasid_entry* phys_to_virt (int) ;

__attribute__((used)) static inline struct pasid_entry *
get_pasid_table_from_pde(struct pasid_dir_entry *pde)
{
 if (!pasid_pde_is_present(pde))
  return ((void*)0);

 return phys_to_virt(READ_ONCE(pde->val) & PDE_PFN_MASK);
}
