
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rect {int dummy; } ;
struct dc_stream_state {int dst; int src; } ;


 scalar_t__ memcmp (int *,int *,int) ;

bool dc_is_stream_scaling_unchanged(
 struct dc_stream_state *old_stream, struct dc_stream_state *stream)
{
 if (old_stream == stream)
  return 1;

 if (old_stream == ((void*)0) || stream == ((void*)0))
  return 0;

 if (memcmp(&old_stream->src,
   &stream->src,
   sizeof(struct rect)) != 0)
  return 0;

 if (memcmp(&old_stream->dst,
   &stream->dst,
   sizeof(struct rect)) != 0)
  return 0;

 return 1;
}
