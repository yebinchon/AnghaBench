
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int fec_capable; } ;
struct intel_crtc_state {int dummy; } ;


 scalar_t__ drm_dp_sink_supports_fec (int ) ;
 scalar_t__ intel_dp_source_supports_fec (struct intel_dp*,struct intel_crtc_state const*) ;

__attribute__((used)) static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
      const struct intel_crtc_state *pipe_config)
{
 return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
  drm_dp_sink_supports_fec(intel_dp->fec_capable);
}
