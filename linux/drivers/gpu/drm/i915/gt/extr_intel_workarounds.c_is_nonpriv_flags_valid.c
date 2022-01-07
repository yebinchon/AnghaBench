
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RING_FORCE_TO_NONPRIV_ACCESS_INVALID ;
 int RING_FORCE_TO_NONPRIV_ACCESS_MASK ;
 int RING_FORCE_TO_NONPRIV_MASK_VALID ;

__attribute__((used)) static inline bool is_nonpriv_flags_valid(u32 flags)
{

 if (flags & ~RING_FORCE_TO_NONPRIV_MASK_VALID)
  return 0;


 if ((flags & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
     RING_FORCE_TO_NONPRIV_ACCESS_INVALID)
  return 0;

 return 1;
}
