
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_util_service {int channel; int recv_buffer; } ;
struct TYPE_2__ {int state; int recv_channel; } ;


 int CN_VSS_IDX ;
 int CN_VSS_VAL ;
 int EFAULT ;
 int ENOTSUPP ;
 int HVUTIL_DEVICE_INIT ;
 scalar_t__ VERSION_WIN8_1 ;
 int hvt ;
 int hvutil_transport_init (int ,int ,int ,int ,int ) ;
 int pr_warn (char*) ;
 int recv_buffer ;
 scalar_t__ vmbus_proto_version ;
 int vss_devname ;
 int vss_on_msg ;
 int vss_on_reset ;
 TYPE_1__ vss_transaction ;

int
hv_vss_init(struct hv_util_service *srv)
{
 if (vmbus_proto_version < VERSION_WIN8_1) {
  pr_warn("Integration service 'Backup (volume snapshot)'"
   " not supported on this host version.\n");
  return -ENOTSUPP;
 }
 recv_buffer = srv->recv_buffer;
 vss_transaction.recv_channel = srv->channel;







 vss_transaction.state = HVUTIL_DEVICE_INIT;

 hvt = hvutil_transport_init(vss_devname, CN_VSS_IDX, CN_VSS_VAL,
        vss_on_msg, vss_on_reset);
 if (!hvt) {
  pr_warn("VSS: Failed to initialize transport\n");
  return -EFAULT;
 }

 return 0;
}
