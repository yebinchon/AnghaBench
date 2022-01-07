
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;


 int enc_to_intel_dsi (TYPE_1__*) ;
 int get_dsi_io_power_domains (int ,int ) ;
 int to_i915 (int ) ;

__attribute__((used)) static void gen11_dsi_get_power_domains(struct intel_encoder *encoder,
     struct intel_crtc_state *crtc_state)
{
 get_dsi_io_power_domains(to_i915(encoder->base.dev),
     enc_to_intel_dsi(&encoder->base));
}
