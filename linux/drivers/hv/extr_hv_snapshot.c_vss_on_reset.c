
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_DEVICE_INIT ;
 int HV_E_FAIL ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int vss_respond_to_host (int ) ;
 int vss_timeout_work ;
 TYPE_1__ vss_transaction ;

__attribute__((used)) static void vss_on_reset(void)
{
 if (cancel_delayed_work_sync(&vss_timeout_work))
  vss_respond_to_host(HV_E_FAIL);
 vss_transaction.state = HVUTIL_DEVICE_INIT;
}
