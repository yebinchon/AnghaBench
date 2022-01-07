
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct intf_timing_params {scalar_t__ vsync_pulse_width; scalar_t__ v_front_porch; scalar_t__ v_back_porch; scalar_t__ yres; } ;



__attribute__((used)) static u32 get_vertical_total(const struct intf_timing_params *timing)
{
 u32 active = timing->yres;
 u32 inactive =
     timing->v_back_porch + timing->v_front_porch +
     timing->vsync_pulse_width;
 return active + inactive;
}
