
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef scalar_t__ uint16_t ;
struct fixed31_32 {int dummy; } ;


 int DIVIDER ;
 int S2D13_MAX ;
 int S2D13_MIN ;
 int dc_fixpt_clamp (struct fixed31_32,struct fixed31_32 const,struct fixed31_32 const) ;
 struct fixed31_32 dc_fixpt_from_fraction (int ,int ) ;
 size_t fixed_point_to_int_frac (int ,int,int) ;

void convert_float_matrix(
 uint16_t *matrix,
 struct fixed31_32 *flt,
 uint32_t buffer_size)
{
 const struct fixed31_32 min_2_13 =
  dc_fixpt_from_fraction(S2D13_MIN, DIVIDER);
 const struct fixed31_32 max_2_13 =
  dc_fixpt_from_fraction(S2D13_MAX, DIVIDER);
 uint32_t i;

 for (i = 0; i < buffer_size; ++i) {
  uint32_t reg_value =
    fixed_point_to_int_frac(
     dc_fixpt_clamp(
      flt[i],
      min_2_13,
      max_2_13),
      2,
      13);

  matrix[i] = (uint16_t)reg_value;
 }
}
