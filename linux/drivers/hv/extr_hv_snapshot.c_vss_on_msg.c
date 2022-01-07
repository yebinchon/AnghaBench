
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ operation; } ;
struct hv_vss_msg {int error; TYPE_3__ vss_hdr; } ;
struct TYPE_8__ {scalar_t__ state; int recv_channel; TYPE_2__* msg; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ vss_cf; } ;


 int EINVAL ;
 scalar_t__ HVUTIL_READY ;
 scalar_t__ HVUTIL_USERSPACE_RECV ;
 scalar_t__ HVUTIL_USERSPACE_REQ ;
 int VSS_HBU_NO_AUTO_RECOVERY ;
 scalar_t__ VSS_OP_HOT_BACKUP ;
 scalar_t__ VSS_OP_REGISTER ;
 scalar_t__ VSS_OP_REGISTER1 ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int hv_poll_channel (int ,int ) ;
 int pr_debug (char*) ;
 int vss_handle_handshake (struct hv_vss_msg*) ;
 int vss_poll_wrapper ;
 int vss_respond_to_host (int ) ;
 int vss_timeout_work ;
 TYPE_4__ vss_transaction ;

__attribute__((used)) static int vss_on_msg(void *msg, int len)
{
 struct hv_vss_msg *vss_msg = (struct hv_vss_msg *)msg;

 if (len != sizeof(*vss_msg)) {
  pr_debug("VSS: Message size does not match length\n");
  return -EINVAL;
 }

 if (vss_msg->vss_hdr.operation == VSS_OP_REGISTER ||
     vss_msg->vss_hdr.operation == VSS_OP_REGISTER1) {




  if (vss_transaction.state > HVUTIL_READY) {
   pr_debug("VSS: Got unexpected registration request\n");
   return -EINVAL;
  }

  return vss_handle_handshake(vss_msg);
 } else if (vss_transaction.state == HVUTIL_USERSPACE_REQ) {
  vss_transaction.state = HVUTIL_USERSPACE_RECV;

  if (vss_msg->vss_hdr.operation == VSS_OP_HOT_BACKUP)
   vss_transaction.msg->vss_cf.flags =
    VSS_HBU_NO_AUTO_RECOVERY;

  if (cancel_delayed_work_sync(&vss_timeout_work)) {
   vss_respond_to_host(vss_msg->error);

   hv_poll_channel(vss_transaction.recv_channel,
     vss_poll_wrapper);
  }
 } else {

  pr_debug("VSS: Transaction not active\n");
  return -EINVAL;
 }
 return 0;
}
