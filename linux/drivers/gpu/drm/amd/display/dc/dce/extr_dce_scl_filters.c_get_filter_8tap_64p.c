
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct fixed31_32 {scalar_t__ value; } ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ value; } ;


 TYPE_2__ dc_fixpt_from_fraction (int,int) ;
 TYPE_1__ dc_fixpt_one ;
 int const* filter_8tap_64p_117 ;
 int const* filter_8tap_64p_150 ;
 int const* filter_8tap_64p_183 ;
 int const* filter_8tap_64p_upscale ;

const uint16_t *get_filter_8tap_64p(struct fixed31_32 ratio)
{
 if (ratio.value < dc_fixpt_one.value)
  return filter_8tap_64p_upscale;
 else if (ratio.value < dc_fixpt_from_fraction(4, 3).value)
  return filter_8tap_64p_117;
 else if (ratio.value < dc_fixpt_from_fraction(5, 3).value)
  return filter_8tap_64p_150;
 else
  return filter_8tap_64p_183;
}
