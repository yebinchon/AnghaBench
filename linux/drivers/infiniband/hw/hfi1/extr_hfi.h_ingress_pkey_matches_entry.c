
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ PKEY_LOW_15_MASK ;
 scalar_t__ PKEY_MEMBER_MASK ;

__attribute__((used)) static inline int ingress_pkey_matches_entry(u16 pkey, u16 ent)
{
 u16 mkey = pkey & PKEY_LOW_15_MASK;
 u16 ment = ent & PKEY_LOW_15_MASK;

 if (mkey == ment) {





  if (!(pkey & PKEY_MEMBER_MASK))
   return !!(ent & PKEY_MEMBER_MASK);
  return 1;
 }
 return 0;
}
