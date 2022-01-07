
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_util_service {int channel; int recv_buffer; } ;
struct TYPE_2__ {int state; int recv_channel; } ;


 int EFAULT ;
 int HVUTIL_DEVICE_INIT ;
 int fcopy_devname ;
 int fcopy_on_msg ;
 int fcopy_on_reset ;
 TYPE_1__ fcopy_transaction ;
 int hvt ;
 int hvutil_transport_init (int ,int ,int ,int ,int ) ;
 int recv_buffer ;

int hv_fcopy_init(struct hv_util_service *srv)
{
 recv_buffer = srv->recv_buffer;
 fcopy_transaction.recv_channel = srv->channel;







 fcopy_transaction.state = HVUTIL_DEVICE_INIT;

 hvt = hvutil_transport_init(fcopy_devname, 0, 0,
        fcopy_on_msg, fcopy_on_reset);
 if (!hvt)
  return -EFAULT;

 return 0;
}
