
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gamma_lut; } ;
struct intel_crtc_state {TYPE_1__ base; } ;


 int i9xx_load_luts_internal (struct intel_crtc_state const*,int ) ;

__attribute__((used)) static void i9xx_load_luts(const struct intel_crtc_state *crtc_state)
{
 i9xx_load_luts_internal(crtc_state, crtc_state->base.gamma_lut);
}
