
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {scalar_t__ sink; scalar_t__ output_color_space; int timing; } ;
struct dc_crtc_timing {int dummy; } ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static bool is_timing_changed(struct dc_stream_state *cur_stream,
  struct dc_stream_state *new_stream)
{
 if (cur_stream == ((void*)0))
  return 1;




 if (cur_stream->sink != new_stream->sink)
  return 1;


 if (cur_stream->output_color_space != new_stream->output_color_space)
  return 1;

 return memcmp(
  &cur_stream->timing,
  &new_stream->timing,
  sizeof(struct dc_crtc_timing)) != 0;
}
