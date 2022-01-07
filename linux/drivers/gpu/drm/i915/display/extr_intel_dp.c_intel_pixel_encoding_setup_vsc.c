
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vsc_sdp ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int base; int (* write_infoframe ) (int *,struct intel_crtc_state const*,int ,struct dp_sdp*,int) ;} ;
struct intel_crtc_state {int pipe_bpp; } ;
struct TYPE_2__ {int HB1; int HB2; int HB3; scalar_t__ HB0; } ;
struct dp_sdp {int* db; TYPE_1__ sdp_header; } ;


 int DP_SDP_VSC ;
 int MISSING_CASE (int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int stub1 (int *,struct intel_crtc_state const*,int ,struct dp_sdp*,int) ;

__attribute__((used)) static void
intel_pixel_encoding_setup_vsc(struct intel_dp *intel_dp,
          const struct intel_crtc_state *crtc_state)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct dp_sdp vsc_sdp = {};


 vsc_sdp.sdp_header.HB0 = 0;
 vsc_sdp.sdp_header.HB1 = 0x7;





 vsc_sdp.sdp_header.HB2 = 0x5;





 vsc_sdp.sdp_header.HB3 = 0x13;





 vsc_sdp.db[16] = 0x3 << 4;

 vsc_sdp.db[16] |= 0x1;
 switch (crtc_state->pipe_bpp) {
 case 24:
  vsc_sdp.db[17] = 0x1;
  break;
 case 30:
  vsc_sdp.db[17] = 0x2;
  break;
 case 36:
  vsc_sdp.db[17] = 0x3;
  break;
 case 48:
  vsc_sdp.db[17] = 0x4;
  break;
 default:
  MISSING_CASE(crtc_state->pipe_bpp);
  break;
 }






 vsc_sdp.db[17] |= 0x80;
 vsc_sdp.db[18] = 0;

 intel_dig_port->write_infoframe(&intel_dig_port->base,
   crtc_state, DP_SDP_VSC, &vsc_sdp, sizeof(vsc_sdp));
}
