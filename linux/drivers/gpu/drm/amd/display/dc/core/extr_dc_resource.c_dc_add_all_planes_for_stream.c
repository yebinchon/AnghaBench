
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_validation_set {int plane_count; struct dc_plane_state** plane_states; struct dc_stream_state* stream; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int dummy; } ;
struct dc_plane_state {int dummy; } ;
struct dc {int dummy; } ;


 int add_all_planes_for_stream (struct dc const*,struct dc_stream_state*,struct dc_validation_set*,int,struct dc_state*) ;

bool dc_add_all_planes_for_stream(
  const struct dc *dc,
  struct dc_stream_state *stream,
  struct dc_plane_state * const *plane_states,
  int plane_count,
  struct dc_state *context)
{
 struct dc_validation_set set;
 int i;

 set.stream = stream;
 set.plane_count = plane_count;

 for (i = 0; i < plane_count; i++)
  set.plane_states[i] = plane_states[i];

 return add_all_planes_for_stream(dc, stream, &set, 1, context);
}
