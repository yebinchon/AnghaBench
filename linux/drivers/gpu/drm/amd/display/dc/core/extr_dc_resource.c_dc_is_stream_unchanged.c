
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_stream_state {scalar_t__ ignore_msa_timing_param; } ;


 int are_stream_backends_same (struct dc_stream_state*,struct dc_stream_state*) ;

bool dc_is_stream_unchanged(
 struct dc_stream_state *old_stream, struct dc_stream_state *stream)
{

 if (!are_stream_backends_same(old_stream, stream))
  return 0;

 if (old_stream->ignore_msa_timing_param != stream->ignore_msa_timing_param)
  return 0;

 return 1;
}
