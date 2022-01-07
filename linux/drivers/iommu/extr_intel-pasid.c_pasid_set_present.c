
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_entry {int * val; } ;


 int pasid_set_bits (int *,int,int) ;

__attribute__((used)) static inline void pasid_set_present(struct pasid_entry *pe)
{
 pasid_set_bits(&pe->val[0], 1 << 0, 1);
}
