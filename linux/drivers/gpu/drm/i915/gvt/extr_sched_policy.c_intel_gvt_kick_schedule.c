
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int sched_lock; } ;


 int INTEL_GVT_REQUEST_EVENT_SCHED ;
 int intel_gvt_request_service (struct intel_gvt*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_gvt_kick_schedule(struct intel_gvt *gvt)
{
 mutex_lock(&gvt->sched_lock);
 intel_gvt_request_service(gvt, INTEL_GVT_REQUEST_EVENT_SCHED);
 mutex_unlock(&gvt->sched_lock);
}
