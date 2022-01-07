
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int find_closest (int,int ,int) ;
 int si1133_scale_available ;

__attribute__((used)) static int si1133_scale_to_swgain(int scale_integer, int scale_fractional)
{
 scale_integer = find_closest(scale_integer, si1133_scale_available,
         ARRAY_SIZE(si1133_scale_available));
 if (scale_integer < 0 ||
     scale_integer > ARRAY_SIZE(si1133_scale_available) ||
     scale_fractional != 0)
  return -EINVAL;

 return scale_integer;
}
