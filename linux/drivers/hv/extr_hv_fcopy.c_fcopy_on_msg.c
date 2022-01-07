
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int recv_channel; } ;


 int EINVAL ;
 scalar_t__ HVUTIL_DEVICE_INIT ;
 scalar_t__ HVUTIL_USERSPACE_RECV ;
 scalar_t__ HVUTIL_USERSPACE_REQ ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int fcopy_handle_handshake (int) ;
 int fcopy_poll_wrapper ;
 int fcopy_respond_to_host (int) ;
 int fcopy_timeout_work ;
 TYPE_1__ fcopy_transaction ;
 int hv_poll_channel (int ,int ) ;

__attribute__((used)) static int fcopy_on_msg(void *msg, int len)
{
 int *val = (int *)msg;

 if (len != sizeof(int))
  return -EINVAL;

 if (fcopy_transaction.state == HVUTIL_DEVICE_INIT)
  return fcopy_handle_handshake(*val);

 if (fcopy_transaction.state != HVUTIL_USERSPACE_REQ)
  return -EINVAL;





 if (cancel_delayed_work_sync(&fcopy_timeout_work)) {
  fcopy_transaction.state = HVUTIL_USERSPACE_RECV;
  fcopy_respond_to_host(*val);
  hv_poll_channel(fcopy_transaction.recv_channel,
    fcopy_poll_wrapper);
 }

 return 0;
}
