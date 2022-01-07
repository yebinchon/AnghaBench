
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int stream_count; int * streams; } ;


 int set_master_stream (int *,int) ;
 int set_multisync_trigger_params (int ) ;

__attribute__((used)) static void dm_enable_per_frame_crtc_master_sync(struct dc_state *context)
{
 int i = 0;

 if (context->stream_count < 2)
  return;
 for (i = 0; i < context->stream_count ; i++) {
  if (!context->streams[i])
   continue;





  set_multisync_trigger_params(context->streams[i]);
 }
 set_master_stream(context->streams, context->stream_count);
}
