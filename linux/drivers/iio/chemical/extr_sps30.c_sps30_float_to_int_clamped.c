
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int GENMASK (int,int ) ;
 int SPS30_MAX_PM ;
 int get_unaligned_be32 (int const*) ;

__attribute__((used)) static s32 sps30_float_to_int_clamped(const u8 *fp)
{
 int val = get_unaligned_be32(fp);
 int mantissa = val & GENMASK(22, 0);

 int exp = val >> 23;
 int fraction, shift;


 if (!exp && !mantissa)
  return 0;

 exp -= 127;
 if (exp < 0) {

  return ((((1 << 23) + mantissa) * 100) >> 23) >> (-exp);
 }


 shift = 23 - exp;
 val = (1 << exp) + (mantissa >> shift);
 if (val >= SPS30_MAX_PM)
  return SPS30_MAX_PM * 100;

 fraction = mantissa & GENMASK(shift - 1, 0);

 return val * 100 + ((fraction * 100) >> shift);
}
