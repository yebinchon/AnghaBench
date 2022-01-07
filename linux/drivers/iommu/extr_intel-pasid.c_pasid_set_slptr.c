
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pasid_entry {int * val; } ;


 int VTD_PAGE_MASK ;
 int pasid_set_bits (int *,int ,int ) ;

__attribute__((used)) static inline void
pasid_set_slptr(struct pasid_entry *pe, u64 value)
{
 pasid_set_bits(&pe->val[0], VTD_PAGE_MASK, value);
}
