
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int BIT (int) ;
 int BIT_ULL (int) ;
 int GENMASK (int,int ) ;
 int GENMASK_ULL (int,int) ;

__attribute__((used)) static u16 vc4_ctm_s31_32_to_s0_9(u64 in)
{
 u16 r;


 r = in & BIT_ULL(63) ? BIT(9) : 0;

 if ((in & GENMASK_ULL(62, 32)) > 0) {

  r |= GENMASK(8, 0);
 } else {

  r |= (in >> 23) & GENMASK(8, 0);
 }

 return r;
}
