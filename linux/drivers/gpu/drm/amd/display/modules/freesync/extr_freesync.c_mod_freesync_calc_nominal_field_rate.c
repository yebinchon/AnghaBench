
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_clk_100hz; int v_total; int h_total; } ;
struct dc_stream_state {TYPE_1__ timing; } ;


 unsigned long long div_u64 (unsigned long long,int ) ;

unsigned long long mod_freesync_calc_nominal_field_rate(
   const struct dc_stream_state *stream)
{
 unsigned long long nominal_field_rate_in_uhz = 0;


 nominal_field_rate_in_uhz = stream->timing.pix_clk_100hz / 10;
 nominal_field_rate_in_uhz *= 1000ULL * 1000ULL * 1000ULL;
 nominal_field_rate_in_uhz = div_u64(nominal_field_rate_in_uhz,
      stream->timing.h_total);
 nominal_field_rate_in_uhz = div_u64(nominal_field_rate_in_uhz,
      stream->timing.v_total);

 return nominal_field_rate_in_uhz;
}
