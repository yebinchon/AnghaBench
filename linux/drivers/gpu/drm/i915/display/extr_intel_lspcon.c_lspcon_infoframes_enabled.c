
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_encoder {int base; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_2__ {int active; } ;


 TYPE_1__* enc_to_intel_lspcon (int *) ;

u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
         const struct intel_crtc_state *pipe_config)
{

 return enc_to_intel_lspcon(&encoder->base)->active;
}
