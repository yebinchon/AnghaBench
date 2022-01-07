
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int s16 ;


 int FRAC_N ;

__attribute__((used)) static inline s16 fixp_new16(s16 a)
{
 return ((s32)a) >> (16 - FRAC_N);
}
