
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 int enc_to_dig_port (int *) ;
 int intel_tc_port_put_link (int ) ;

__attribute__((used)) static void
intel_ddi_update_complete(struct intel_atomic_state *state,
     struct intel_encoder *encoder,
     struct intel_crtc *crtc)
{
 intel_tc_port_put_link(enc_to_dig_port(&encoder->base));
}
