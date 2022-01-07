
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_DEVICE_DYING ;
 int cancel_delayed_work_sync (int *) ;
 int fcopy_timeout_work ;
 TYPE_1__ fcopy_transaction ;
 int hvt ;
 int hvutil_transport_destroy (int ) ;

void hv_fcopy_deinit(void)
{
 fcopy_transaction.state = HVUTIL_DEVICE_DYING;
 cancel_delayed_work_sync(&fcopy_timeout_work);
 hvutil_transport_destroy(hvt);
}
