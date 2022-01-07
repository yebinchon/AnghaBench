
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u64 ;
struct timespec64 {int tv_nsec; int tv_sec; } ;
struct TYPE_10__ {int file_priv; } ;
struct TYPE_8__ {int time_ns; void* sequence; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; void* sequence; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_9__ {TYPE_3__ seq; TYPE_2__ vbl; TYPE_1__ base; } ;
struct drm_pending_vblank_event {TYPE_5__ base; int pipe; TYPE_4__ event; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;





 int drm_send_event_locked (struct drm_device*,TYPE_5__*) ;
 int ktime_to_ns (int ) ;
 struct timespec64 ktime_to_timespec64 (int ) ;
 int trace_drm_vblank_event_delivered (int ,int ,void*) ;

__attribute__((used)) static void send_vblank_event(struct drm_device *dev,
  struct drm_pending_vblank_event *e,
  u64 seq, ktime_t now)
{
 struct timespec64 tv;

 switch (e->event.base.type) {
 case 128:
 case 129:
  tv = ktime_to_timespec64(now);
  e->event.vbl.sequence = seq;





  e->event.vbl.tv_sec = tv.tv_sec;
  e->event.vbl.tv_usec = tv.tv_nsec / 1000;
  break;
 case 130:
  if (seq)
   e->event.seq.sequence = seq;
  e->event.seq.time_ns = ktime_to_ns(now);
  break;
 }
 trace_drm_vblank_event_delivered(e->base.file_priv, e->pipe, seq);
 drm_send_event_locked(dev, &e->base);
}
