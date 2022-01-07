
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_info_packet {int valid; int* sb; } ;
typedef enum color_transfer_func { ____Placeholder_color_transfer_func } color_transfer_func ;


 int TRANSFER_FUNC_GAMMA_22 ;
 int TRANSFER_FUNC_UNKNOWN ;

__attribute__((used)) static void build_vrr_infopacket_fs2_data(enum color_transfer_func app_tf,
  struct dc_info_packet *infopacket)
{
 if (app_tf != TRANSFER_FUNC_UNKNOWN) {
  infopacket->valid = 1;

  infopacket->sb[6] |= 0x08;

  if (app_tf == TRANSFER_FUNC_GAMMA_22) {
   infopacket->sb[9] |= 0x04;
  }
 }
}
