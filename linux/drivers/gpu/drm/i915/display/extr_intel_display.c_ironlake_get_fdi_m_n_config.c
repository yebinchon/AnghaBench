
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int fdi_m_n; int cpu_transcoder; } ;
struct intel_crtc {int dummy; } ;


 int intel_cpu_transcoder_get_m_n (struct intel_crtc*,int ,int *,int *) ;

__attribute__((used)) static void ironlake_get_fdi_m_n_config(struct intel_crtc *crtc,
     struct intel_crtc_state *pipe_config)
{
 intel_cpu_transcoder_get_m_n(crtc, pipe_config->cpu_transcoder,
         &pipe_config->fdi_m_n, ((void*)0));
}
