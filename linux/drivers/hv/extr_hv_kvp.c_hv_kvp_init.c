
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_util_service {int channel; int recv_buffer; } ;
struct TYPE_2__ {int state; int recv_channel; } ;


 int CN_KVP_IDX ;
 int CN_KVP_VAL ;
 int EFAULT ;
 int HVUTIL_DEVICE_INIT ;
 int hvt ;
 int hvutil_transport_init (int ,int ,int ,int ,int ) ;
 int kvp_devname ;
 int kvp_on_msg ;
 int kvp_on_reset ;
 TYPE_1__ kvp_transaction ;
 int recv_buffer ;

int
hv_kvp_init(struct hv_util_service *srv)
{
 recv_buffer = srv->recv_buffer;
 kvp_transaction.recv_channel = srv->channel;







 kvp_transaction.state = HVUTIL_DEVICE_INIT;

 hvt = hvutil_transport_init(kvp_devname, CN_KVP_IDX, CN_KVP_VAL,
        kvp_on_msg, kvp_on_reset);
 if (!hvt)
  return -EFAULT;

 return 0;
}
