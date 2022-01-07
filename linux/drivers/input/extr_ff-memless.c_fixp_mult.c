
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int s16 ;


 int FRAC_N ;

__attribute__((used)) static inline s16 fixp_mult(s16 a, s16 b)
{
 a = ((s32)a * 0x100) / 0x7fff;
 return ((s32)(a * b)) >> FRAC_N;
}
