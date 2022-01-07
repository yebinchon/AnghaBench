
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s8 ;



__attribute__((used)) static int si1133_calculate_polynomial_inner(u32 input, u8 fraction, u16 mag,
          s8 shift)
{
 return ((input << fraction) / mag) << shift;
}
