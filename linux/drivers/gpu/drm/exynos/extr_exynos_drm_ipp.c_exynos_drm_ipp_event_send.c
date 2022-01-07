
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec64 {int tv_nsec; int tv_sec; } ;
struct exynos_drm_ipp_task {TYPE_3__* event; TYPE_1__* ipp; } ;
struct TYPE_5__ {int tv_usec; int sequence; int tv_sec; } ;
struct TYPE_6__ {int base; TYPE_2__ event; } ;
struct TYPE_4__ {int drm_dev; int sequence; } ;


 int NSEC_PER_USEC ;
 int atomic_inc_return (int *) ;
 int drm_send_event (int ,int *) ;
 int ktime_get_ts64 (struct timespec64*) ;

__attribute__((used)) static void exynos_drm_ipp_event_send(struct exynos_drm_ipp_task *task)
{
 struct timespec64 now;

 ktime_get_ts64(&now);
 task->event->event.tv_sec = now.tv_sec;
 task->event->event.tv_usec = now.tv_nsec / NSEC_PER_USEC;
 task->event->event.sequence = atomic_inc_return(&task->ipp->sequence);

 drm_send_event(task->ipp->drm_dev, &task->event->base);
}
