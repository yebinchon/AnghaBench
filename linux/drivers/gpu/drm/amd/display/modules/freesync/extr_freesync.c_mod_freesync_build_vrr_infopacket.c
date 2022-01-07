
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_vrr_params {int send_info_frame; int supported; } ;
struct mod_freesync {int dummy; } ;
struct dc_stream_state {int signal; } ;
struct dc_info_packet {int dummy; } ;
typedef enum vrr_packet_type { ____Placeholder_vrr_packet_type } vrr_packet_type ;
typedef enum color_transfer_func { ____Placeholder_color_transfer_func } color_transfer_func ;





 int build_vrr_infopacket_v1 (int ,struct mod_vrr_params const*,struct dc_info_packet*) ;
 int build_vrr_infopacket_v2 (int ,struct mod_vrr_params const*,int,struct dc_info_packet*) ;

void mod_freesync_build_vrr_infopacket(struct mod_freesync *mod_freesync,
  const struct dc_stream_state *stream,
  const struct mod_vrr_params *vrr,
  enum vrr_packet_type packet_type,
  enum color_transfer_func app_tf,
  struct dc_info_packet *infopacket)
{





 if (!vrr->supported || (!vrr->send_info_frame))
  return;

 switch (packet_type) {
 case 129:
  build_vrr_infopacket_v2(stream->signal, vrr, app_tf, infopacket);
  break;
 case 128:
 case 130:
 default:
  build_vrr_infopacket_v1(stream->signal, vrr, infopacket);
 }
}
