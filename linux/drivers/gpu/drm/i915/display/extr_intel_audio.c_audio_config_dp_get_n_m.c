
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {scalar_t__ port_clock; } ;
struct dp_aud_n_m {int sample_rate; scalar_t__ clock; } ;


 int ARRAY_SIZE (struct dp_aud_n_m const*) ;
 struct dp_aud_n_m const* dp_aud_n_m ;

__attribute__((used)) static const struct dp_aud_n_m *
audio_config_dp_get_n_m(const struct intel_crtc_state *crtc_state, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dp_aud_n_m); i++) {
  if (rate == dp_aud_n_m[i].sample_rate &&
      crtc_state->port_clock == dp_aud_n_m[i].clock)
   return &dp_aud_n_m[i];
 }

 return ((void*)0);
}
