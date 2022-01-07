
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {scalar_t__ dpms_off; } ;


 scalar_t__ is_hdr_static_meta_changed (struct dc_stream_state*,struct dc_stream_state*) ;
 scalar_t__ is_timing_changed (struct dc_stream_state*,struct dc_stream_state*) ;
 scalar_t__ is_vsc_info_packet_changed (struct dc_stream_state*,struct dc_stream_state*) ;

__attribute__((used)) static bool are_stream_backends_same(
 struct dc_stream_state *stream_a, struct dc_stream_state *stream_b)
{
 if (stream_a == stream_b)
  return 1;

 if (stream_a == ((void*)0) || stream_b == ((void*)0))
  return 0;

 if (is_timing_changed(stream_a, stream_b))
  return 0;

 if (is_hdr_static_meta_changed(stream_a, stream_b))
  return 0;

 if (stream_a->dpms_off != stream_b->dpms_off)
  return 0;

 if (is_vsc_info_packet_changed(stream_a, stream_b))
  return 0;

 return 1;
}
