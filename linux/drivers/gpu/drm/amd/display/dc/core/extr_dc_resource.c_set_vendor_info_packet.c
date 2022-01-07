
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_info_packet {int valid; } ;
struct dc_stream_state {struct dc_info_packet vsp_infopacket; } ;



__attribute__((used)) static void set_vendor_info_packet(
  struct dc_info_packet *info_packet,
  struct dc_stream_state *stream)
{





 if (!stream->vsp_infopacket.valid)
  return;

 *info_packet = stream->vsp_infopacket;
}
