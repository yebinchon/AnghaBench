
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enable; } ;
struct intel_crtc_state {int fdi_lanes; scalar_t__ has_pch_encoder; TYPE_1__ base; } ;



__attribute__((used)) static int pipe_required_fdi_lanes(struct intel_crtc_state *crtc_state)
{
 if (crtc_state->base.enable && crtc_state->has_pch_encoder)
  return crtc_state->fdi_lanes;

 return 0;
}
