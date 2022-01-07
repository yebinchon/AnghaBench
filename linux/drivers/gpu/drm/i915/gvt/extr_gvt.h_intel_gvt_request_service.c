
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int service_thread_wq; int service_request; } ;


 int set_bit (int,void*) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void intel_gvt_request_service(struct intel_gvt *gvt,
  int service)
{
 set_bit(service, (void *)&gvt->service_request);
 wake_up(&gvt->service_thread_wq);
}
