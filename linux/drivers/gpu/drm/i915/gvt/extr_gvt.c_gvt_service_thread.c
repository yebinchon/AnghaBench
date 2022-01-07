
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {scalar_t__ service_request; int service_thread_wq; } ;


 int INTEL_GVT_REQUEST_EMULATE_VBLANK ;
 int INTEL_GVT_REQUEST_EVENT_SCHED ;
 int INTEL_GVT_REQUEST_SCHED ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int gvt_dbg_core (char*) ;
 int intel_gvt_emulate_vblank (struct intel_gvt*) ;
 int intel_gvt_schedule (struct intel_gvt*) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ test_and_clear_bit (int ,void*) ;
 scalar_t__ test_bit (int ,void*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int gvt_service_thread(void *data)
{
 struct intel_gvt *gvt = (struct intel_gvt *)data;
 int ret;

 gvt_dbg_core("service thread start\n");

 while (!kthread_should_stop()) {
  ret = wait_event_interruptible(gvt->service_thread_wq,
    kthread_should_stop() || gvt->service_request);

  if (kthread_should_stop())
   break;

  if (WARN_ONCE(ret, "service thread is waken up by signal.\n"))
   continue;

  if (test_and_clear_bit(INTEL_GVT_REQUEST_EMULATE_VBLANK,
     (void *)&gvt->service_request))
   intel_gvt_emulate_vblank(gvt);

  if (test_bit(INTEL_GVT_REQUEST_SCHED,
    (void *)&gvt->service_request) ||
   test_bit(INTEL_GVT_REQUEST_EVENT_SCHED,
     (void *)&gvt->service_request)) {
   intel_gvt_schedule(gvt);
  }
 }

 return 0;
}
