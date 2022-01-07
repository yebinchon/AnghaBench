
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int find_closest_descending (int,int ,int ) ;
 int si1145_intensity_scale_available ;

__attribute__((used)) static int si1145_intensity_adcgain_from_scale(int val, int val2)
{
 val = find_closest_descending(val, si1145_intensity_scale_available,
    ARRAY_SIZE(si1145_intensity_scale_available));
 if (val < 0 || val > 7 || val2 != 0)
  return -EINVAL;

 return val;
}
