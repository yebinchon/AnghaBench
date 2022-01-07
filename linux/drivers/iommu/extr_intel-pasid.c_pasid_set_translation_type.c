
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pasid_entry {int * val; } ;


 int GENMASK_ULL (int,int) ;
 int pasid_set_bits (int *,int ,int) ;

__attribute__((used)) static inline void
pasid_set_translation_type(struct pasid_entry *pe, u64 value)
{
 pasid_set_bits(&pe->val[0], GENMASK_ULL(8, 6), value << 6);
}
