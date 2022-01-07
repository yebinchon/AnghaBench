
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delay; int event; scalar_t__ enabled; } ;
struct dc_stream_state {TYPE_1__ triggered_crtc_reset; } ;


 int CRTC_EVENT_VSYNC_RISING ;
 int TRIGGER_DELAY_NEXT_LINE ;

__attribute__((used)) static void set_multisync_trigger_params(
  struct dc_stream_state *stream)
{
 if (stream->triggered_crtc_reset.enabled) {
  stream->triggered_crtc_reset.event = CRTC_EVENT_VSYNC_RISING;
  stream->triggered_crtc_reset.delay = TRIGGER_DELAY_NEXT_LINE;
 }
}
