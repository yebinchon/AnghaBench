
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int DIV_ROUND_CLOSEST_ULL (unsigned int,int) ;
 scalar_t__ hdmi_mode_clock_to_hz (unsigned int) ;

__attribute__((used)) static unsigned int hdmi_expected_cts(unsigned int audio_sample_rate,
          unsigned int tmds_clock, unsigned int n)
{
 return DIV_ROUND_CLOSEST_ULL((u64)hdmi_mode_clock_to_hz(tmds_clock) * n,
         128 * audio_sample_rate);
}
