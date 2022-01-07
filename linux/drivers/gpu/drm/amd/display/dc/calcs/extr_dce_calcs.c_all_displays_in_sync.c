
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_ctx {int stream; scalar_t__ top_pipe; } ;


 int MAX_PIPES ;
 int resource_are_streams_timing_synchronizable (int ,int ) ;

__attribute__((used)) static bool all_displays_in_sync(const struct pipe_ctx pipe[],
     int pipe_count)
{
 const struct pipe_ctx *active_pipes[MAX_PIPES];
 int i, num_active_pipes = 0;

 for (i = 0; i < pipe_count; i++) {
  if (!pipe[i].stream || pipe[i].top_pipe)
   continue;

  active_pipes[num_active_pipes++] = &pipe[i];
 }

 if (!num_active_pipes)
  return 0;

 for (i = 1; i < num_active_pipes; ++i) {
  if (!resource_are_streams_timing_synchronizable(
       active_pipes[0]->stream, active_pipes[i]->stream)) {
   return 0;
  }
 }

 return 1;
}
