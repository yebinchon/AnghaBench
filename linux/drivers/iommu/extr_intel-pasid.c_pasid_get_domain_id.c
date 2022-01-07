
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pasid_entry {int * val; } ;


 int GENMASK_ULL (int,int ) ;
 int READ_ONCE (int ) ;

__attribute__((used)) static inline u16
pasid_get_domain_id(struct pasid_entry *pe)
{
 return (u16)(READ_ONCE(pe->val[1]) & GENMASK_ULL(15, 0));
}
