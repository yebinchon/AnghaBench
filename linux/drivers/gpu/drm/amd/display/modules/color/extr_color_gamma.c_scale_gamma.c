
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct pwl_float_data {void* b; void* g; void* r; } ;
struct fixed31_32 {int dummy; } ;
struct dividers {int divider3; int divider2; int divider1; } ;
struct TYPE_2__ {int * blue; int * green; int * red; } ;
struct dc_gamma {int num_entries; TYPE_1__ entries; } ;


 void* dc_fixpt_div (int ,struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_from_int (int) ;
 scalar_t__ dc_fixpt_lt (struct fixed31_32 const,int ) ;
 void* dc_fixpt_mul (void*,int ) ;

__attribute__((used)) static void scale_gamma(struct pwl_float_data *pwl_rgb,
  const struct dc_gamma *ramp,
  struct dividers dividers)
{
 const struct fixed31_32 max_driver = dc_fixpt_from_int(0xFFFF);
 const struct fixed31_32 max_os = dc_fixpt_from_int(0xFF00);
 struct fixed31_32 scaler = max_os;
 uint32_t i;
 struct pwl_float_data *rgb = pwl_rgb;
 struct pwl_float_data *rgb_last = rgb + ramp->num_entries - 1;

 i = 0;

 do {
  if (dc_fixpt_lt(max_os, ramp->entries.red[i]) ||
   dc_fixpt_lt(max_os, ramp->entries.green[i]) ||
   dc_fixpt_lt(max_os, ramp->entries.blue[i])) {
   scaler = max_driver;
   break;
  }
  ++i;
 } while (i != ramp->num_entries);

 i = 0;

 do {
  rgb->r = dc_fixpt_div(
   ramp->entries.red[i], scaler);
  rgb->g = dc_fixpt_div(
   ramp->entries.green[i], scaler);
  rgb->b = dc_fixpt_div(
   ramp->entries.blue[i], scaler);

  ++rgb;
  ++i;
 } while (i != ramp->num_entries);

 rgb->r = dc_fixpt_mul(rgb_last->r,
   dividers.divider1);
 rgb->g = dc_fixpt_mul(rgb_last->g,
   dividers.divider1);
 rgb->b = dc_fixpt_mul(rgb_last->b,
   dividers.divider1);

 ++rgb;

 rgb->r = dc_fixpt_mul(rgb_last->r,
   dividers.divider2);
 rgb->g = dc_fixpt_mul(rgb_last->g,
   dividers.divider2);
 rgb->b = dc_fixpt_mul(rgb_last->b,
   dividers.divider2);

 ++rgb;

 rgb->r = dc_fixpt_mul(rgb_last->r,
   dividers.divider3);
 rgb->g = dc_fixpt_mul(rgb_last->g,
   dividers.divider3);
 rgb->b = dc_fixpt_mul(rgb_last->b,
   dividers.divider3);
}
