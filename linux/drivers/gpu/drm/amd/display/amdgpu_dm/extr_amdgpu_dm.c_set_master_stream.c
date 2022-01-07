
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct dc_stream_state* event_source; scalar_t__ enabled; } ;
struct TYPE_3__ {int pix_clk_100hz; int h_total; int v_total; } ;
struct dc_stream_state {TYPE_2__ triggered_crtc_reset; TYPE_1__ timing; } ;



__attribute__((used)) static void set_master_stream(struct dc_stream_state *stream_set[],
         int stream_count)
{
 int j, highest_rfr = 0, master_stream = 0;

 for (j = 0; j < stream_count; j++) {
  if (stream_set[j] && stream_set[j]->triggered_crtc_reset.enabled) {
   int refresh_rate = 0;

   refresh_rate = (stream_set[j]->timing.pix_clk_100hz*100)/
    (stream_set[j]->timing.h_total*stream_set[j]->timing.v_total);
   if (refresh_rate > highest_rfr) {
    highest_rfr = refresh_rate;
    master_stream = j;
   }
  }
 }
 for (j = 0; j < stream_count; j++) {
  if (stream_set[j])
   stream_set[j]->triggered_crtc_reset.event_source = stream_set[master_stream];
 }
}
