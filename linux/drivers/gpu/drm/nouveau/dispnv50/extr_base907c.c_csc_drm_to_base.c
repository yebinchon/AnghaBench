
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int BIT_ULL (int) ;
 int GENMASK (int,int ) ;

__attribute__((used)) static inline u32
csc_drm_to_base(u64 in)
{

 bool sign = in & BIT_ULL(63);
 u32 integer = (in >> 32) & 0x7fffffff;
 u32 fraction = in & 0xffffffff;

 if (integer >= 4) {
  return (1 << 18) - (sign ? 0 : 1);
 } else {
  u32 ret = (integer << 16) | (fraction >> 16);
  if (sign)
   ret = -ret;
  return ret & GENMASK(18, 0);
 }
}
