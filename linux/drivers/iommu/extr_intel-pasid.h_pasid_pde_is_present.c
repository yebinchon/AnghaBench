
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_dir_entry {int val; } ;


 int PASID_PTE_PRESENT ;
 int READ_ONCE (int ) ;

__attribute__((used)) static inline bool pasid_pde_is_present(struct pasid_dir_entry *pde)
{
 return READ_ONCE(pde->val) & PASID_PTE_PRESENT;
}
