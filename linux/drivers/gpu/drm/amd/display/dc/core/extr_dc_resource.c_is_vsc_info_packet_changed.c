
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {int vsc_infopacket; } ;
struct dc_info_packet {int dummy; } ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static bool is_vsc_info_packet_changed(struct dc_stream_state *cur_stream,
  struct dc_stream_state *new_stream)
{
 if (cur_stream == ((void*)0))
  return 1;

 if (memcmp(&cur_stream->vsc_infopacket,
   &new_stream->vsc_infopacket,
   sizeof(struct dc_info_packet)) != 0)
  return 1;

 return 0;
}
