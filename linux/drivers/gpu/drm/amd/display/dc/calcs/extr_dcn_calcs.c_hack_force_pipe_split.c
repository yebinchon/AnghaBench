
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcn_bw_internal_vars {float* max_dppclk; } ;



__attribute__((used)) static void hack_force_pipe_split(struct dcn_bw_internal_vars *v,
  unsigned int pixel_rate_100hz)
{
 float pixel_rate_mhz = pixel_rate_100hz / 10000;





 if (pixel_rate_mhz < v->max_dppclk[0])
  v->max_dppclk[0] = pixel_rate_mhz;
}
