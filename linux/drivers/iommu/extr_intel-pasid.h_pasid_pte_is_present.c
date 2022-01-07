
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_entry {int * val; } ;


 int PASID_PTE_PRESENT ;
 int READ_ONCE (int ) ;

__attribute__((used)) static inline bool pasid_pte_is_present(struct pasid_entry *pte)
{
 return READ_ONCE(pte->val[0]) & PASID_PTE_PRESENT;
}
