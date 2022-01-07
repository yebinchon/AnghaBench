
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int service_thread; int service_thread_wq; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int gvt_err (char*) ;
 int gvt_service_thread ;
 int init_waitqueue_head (int *) ;
 int kthread_run (int ,struct intel_gvt*,char*) ;

__attribute__((used)) static int init_service_thread(struct intel_gvt *gvt)
{
 init_waitqueue_head(&gvt->service_thread_wq);

 gvt->service_thread = kthread_run(gvt_service_thread,
   gvt, "gvt_service_thread");
 if (IS_ERR(gvt->service_thread)) {
  gvt_err("fail to start service thread.\n");
  return PTR_ERR(gvt->service_thread);
 }
 return 0;
}
