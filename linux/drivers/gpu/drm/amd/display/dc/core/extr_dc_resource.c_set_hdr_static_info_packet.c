
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_info_packet {int valid; } ;
struct dc_stream_state {struct dc_info_packet hdr_static_metadata; scalar_t__ use_dynamic_meta; } ;



__attribute__((used)) static void set_hdr_static_info_packet(
  struct dc_info_packet *info_packet,
  struct dc_stream_state *stream)
{


 if (!stream->hdr_static_metadata.valid ||
   stream->use_dynamic_meta)
  return;

 *info_packet = stream->hdr_static_metadata;
}
