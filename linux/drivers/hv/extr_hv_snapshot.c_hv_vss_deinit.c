
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int HVUTIL_DEVICE_DYING ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int hvt ;
 int hvutil_transport_destroy (int ) ;
 int vss_handle_request_work ;
 int vss_timeout_work ;
 TYPE_1__ vss_transaction ;

void hv_vss_deinit(void)
{
 vss_transaction.state = HVUTIL_DEVICE_DYING;
 cancel_delayed_work_sync(&vss_timeout_work);
 cancel_work_sync(&vss_handle_request_work);
 hvutil_transport_destroy(hvt);
}
