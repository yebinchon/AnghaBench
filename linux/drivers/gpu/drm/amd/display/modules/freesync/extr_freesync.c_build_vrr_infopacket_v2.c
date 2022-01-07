
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_vrr_params {int dummy; } ;
struct dc_info_packet {int valid; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum color_transfer_func { ____Placeholder_color_transfer_func } color_transfer_func ;


 int build_vrr_infopacket_checksum (unsigned int*,struct dc_info_packet*) ;
 int build_vrr_infopacket_data (struct mod_vrr_params const*,struct dc_info_packet*) ;
 int build_vrr_infopacket_fs2_data (int,struct dc_info_packet*) ;
 int build_vrr_infopacket_header_v2 (int,struct dc_info_packet*,unsigned int*) ;

__attribute__((used)) static void build_vrr_infopacket_v2(enum signal_type signal,
  const struct mod_vrr_params *vrr,
  enum color_transfer_func app_tf,
  struct dc_info_packet *infopacket)
{
 unsigned int payload_size = 0;

 build_vrr_infopacket_header_v2(signal, infopacket, &payload_size);
 build_vrr_infopacket_data(vrr, infopacket);

 build_vrr_infopacket_fs2_data(app_tf, infopacket);

 build_vrr_infopacket_checksum(&payload_size, infopacket);

 infopacket->valid = 1;
}
