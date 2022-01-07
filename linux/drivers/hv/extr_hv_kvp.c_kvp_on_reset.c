
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_DEVICE_INIT ;
 int HV_E_FAIL ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int kvp_respond_to_host (int *,int ) ;
 int kvp_timeout_work ;
 TYPE_1__ kvp_transaction ;

__attribute__((used)) static void kvp_on_reset(void)
{
 if (cancel_delayed_work_sync(&kvp_timeout_work))
  kvp_respond_to_host(((void*)0), HV_E_FAIL);
 kvp_transaction.state = HVUTIL_DEVICE_INIT;
}
