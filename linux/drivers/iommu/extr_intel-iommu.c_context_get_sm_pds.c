
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_table {int max_pasid; } ;


 int MAX_NR_PASID_BITS ;
 int PASID_PDE_SHIFT ;
 int find_first_bit (unsigned long*,int ) ;

__attribute__((used)) static inline unsigned long context_get_sm_pds(struct pasid_table *table)
{
 int pds, max_pde;

 max_pde = table->max_pasid >> PASID_PDE_SHIFT;
 pds = find_first_bit((unsigned long *)&max_pde, MAX_NR_PASID_BITS);
 if (pds < 7)
  return 0;

 return pds - 7;
}
