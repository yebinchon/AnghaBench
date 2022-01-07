
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct TYPE_3__ {int crtc_clock; int flags; } ;
struct TYPE_4__ {TYPE_1__ adjusted_mode; } ;
struct intel_crtc_state {int port_clock; TYPE_2__ base; int output_types; } ;


 int BIT (int ) ;
 int INTEL_OUTPUT_ANALOG ;
 int intel_crt_get_flags (struct intel_encoder*) ;

__attribute__((used)) static void intel_crt_get_config(struct intel_encoder *encoder,
     struct intel_crtc_state *pipe_config)
{
 pipe_config->output_types |= BIT(INTEL_OUTPUT_ANALOG);

 pipe_config->base.adjusted_mode.flags |= intel_crt_get_flags(encoder);

 pipe_config->base.adjusted_mode.crtc_clock = pipe_config->port_clock;
}
