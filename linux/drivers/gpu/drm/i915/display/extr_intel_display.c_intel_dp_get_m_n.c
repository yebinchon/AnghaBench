
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dp_m2_n2; int dp_m_n; int cpu_transcoder; scalar_t__ has_pch_encoder; } ;
struct intel_crtc {int dummy; } ;


 int intel_cpu_transcoder_get_m_n (struct intel_crtc*,int ,int *,int *) ;
 int intel_pch_transcoder_get_m_n (struct intel_crtc*,int *) ;

void intel_dp_get_m_n(struct intel_crtc *crtc,
        struct intel_crtc_state *pipe_config)
{
 if (pipe_config->has_pch_encoder)
  intel_pch_transcoder_get_m_n(crtc, &pipe_config->dp_m_n);
 else
  intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
          &pipe_config->dp_m_n,
          &pipe_config->dp_m2_n2);
}
