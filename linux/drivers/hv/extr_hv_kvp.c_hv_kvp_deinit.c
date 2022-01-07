
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
 int kvp_host_handshake_work ;
 int kvp_sendkey_work ;
 int kvp_timeout_work ;
 TYPE_1__ kvp_transaction ;

void hv_kvp_deinit(void)
{
 kvp_transaction.state = HVUTIL_DEVICE_DYING;
 cancel_delayed_work_sync(&kvp_host_handshake_work);
 cancel_delayed_work_sync(&kvp_timeout_work);
 cancel_work_sync(&kvp_sendkey_work);
 hvutil_transport_destroy(hvt);
}
