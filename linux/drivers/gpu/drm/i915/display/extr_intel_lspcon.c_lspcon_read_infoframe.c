
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
typedef int ssize_t ;



void lspcon_read_infoframe(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      unsigned int type,
      void *frame, ssize_t len)
{

}
