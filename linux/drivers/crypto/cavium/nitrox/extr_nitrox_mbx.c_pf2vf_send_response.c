
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vfid; int chipid; } ;
union mbox_msg {scalar_t__ type; scalar_t__ value; TYPE_1__ id; int data; } ;
struct TYPE_4__ {int opcode; scalar_t__ value; int data; } ;
struct nitrox_vfdev {int mbx_resp; TYPE_2__ msg; int ring; int state; int nr_queues; int vfno; } ;
struct nitrox_device {int idx; int mode; } ;


 scalar_t__ MBX_MSG_TYPE_ACK ;
 scalar_t__ MBX_MSG_TYPE_NOP ;




 int __NDEV_NOT_READY ;
 int __NDEV_READY ;
 int atomic64_inc (int *) ;
 int atomic_set (int *,int ) ;
 int pf2vf_write_mbox (struct nitrox_device*,scalar_t__,int ) ;

__attribute__((used)) static void pf2vf_send_response(struct nitrox_device *ndev,
    struct nitrox_vfdev *vfdev)
{
 union mbox_msg msg;

 msg.value = vfdev->msg.value;

 switch (vfdev->msg.opcode) {
 case 129:
  msg.data = ndev->mode;
  break;
 case 128:
  vfdev->nr_queues = vfdev->msg.data;
  atomic_set(&vfdev->state, __NDEV_READY);
  break;
 case 131:
  msg.id.chipid = ndev->idx;
  msg.id.vfid = vfdev->vfno;
  break;
 case 130:
  vfdev->nr_queues = 0;
  atomic_set(&vfdev->state, __NDEV_NOT_READY);
  break;
 default:
  msg.type = MBX_MSG_TYPE_NOP;
  break;
 }

 if (msg.type == MBX_MSG_TYPE_NOP)
  return;


 msg.type = MBX_MSG_TYPE_ACK;
 pf2vf_write_mbox(ndev, msg.value, vfdev->ring);

 vfdev->msg.value = 0;
 atomic64_inc(&vfdev->mbx_resp);
}
