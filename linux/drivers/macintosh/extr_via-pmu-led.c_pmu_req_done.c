
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int dummy; } ;


 int pmu_blink_lock ;
 int pmu_blink_req ;
 int pmu_request (int *,int *,int,int,int,int ,int) ;
 int pmu_sys_suspended ;
 int requested_change ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pmu_req_done(struct adb_request * req)
{
 unsigned long flags;

 spin_lock_irqsave(&pmu_blink_lock, flags);



 if (requested_change != -1 && !pmu_sys_suspended)
  pmu_request(&pmu_blink_req, ((void*)0), 4, 0xee, 4, 0, requested_change);

 requested_change = -1;
 spin_unlock_irqrestore(&pmu_blink_lock, flags);
}
