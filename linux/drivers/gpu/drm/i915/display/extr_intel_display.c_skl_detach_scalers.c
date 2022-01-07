
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_crtc_scaler_state {TYPE_2__* scalers; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {struct intel_crtc_scaler_state scaler_state; TYPE_1__ base; } ;
struct intel_crtc {int num_scalers; } ;
struct TYPE_4__ {int in_use; } ;


 int skl_detach_scaler (struct intel_crtc*,int) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->base.crtc);
 const struct intel_crtc_scaler_state *scaler_state =
  &crtc_state->scaler_state;
 int i;


 for (i = 0; i < intel_crtc->num_scalers; i++) {
  if (!scaler_state->scalers[i].in_use)
   skl_detach_scaler(intel_crtc, i);
 }
}
