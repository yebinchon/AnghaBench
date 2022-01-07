
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_vrr_params {scalar_t__ state; int min_refresh_in_uhz; int max_refresh_in_uhz; } ;
struct dc_info_packet {int* sb; } ;


 scalar_t__ VRR_STATE_ACTIVE_FIXED ;
 scalar_t__ VRR_STATE_ACTIVE_VARIABLE ;
 scalar_t__ VRR_STATE_DISABLED ;
 scalar_t__ VRR_STATE_UNSUPPORTED ;

__attribute__((used)) static void build_vrr_infopacket_data(const struct mod_vrr_params *vrr,
  struct dc_info_packet *infopacket)
{

 infopacket->sb[1] = 0x1A;


 infopacket->sb[2] = 0x00;


 infopacket->sb[3] = 0x00;
 if (vrr->state != VRR_STATE_UNSUPPORTED)
  infopacket->sb[6] |= 0x01;


 if (vrr->state != VRR_STATE_DISABLED &&
   vrr->state != VRR_STATE_UNSUPPORTED)
  infopacket->sb[6] |= 0x02;


 if (vrr->state == VRR_STATE_ACTIVE_VARIABLE ||
   vrr->state == VRR_STATE_ACTIVE_FIXED)
  infopacket->sb[6] |= 0x04;


 infopacket->sb[7] = (unsigned char)(vrr->min_refresh_in_uhz / 1000000);




 infopacket->sb[8] = (unsigned char)(vrr->max_refresh_in_uhz / 1000000);



 infopacket->sb[9] = 0;
 infopacket->sb[10] = 0;
}
