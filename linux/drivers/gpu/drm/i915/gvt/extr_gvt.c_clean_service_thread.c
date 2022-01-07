
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int service_thread; } ;


 int kthread_stop (int ) ;

__attribute__((used)) static void clean_service_thread(struct intel_gvt *gvt)
{
 kthread_stop(gvt->service_thread);
}
