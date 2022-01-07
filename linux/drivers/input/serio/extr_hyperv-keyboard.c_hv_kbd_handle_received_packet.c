
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmpacket_descriptor {int type; int offset8; } ;
struct synth_kbd_msg_hdr {int dummy; } ;
struct synth_kbd_msg {int dummy; } ;
struct hv_device {int device; } ;




 int dev_err (int *,char*,int,int ,int) ;
 int hv_kbd_on_receive (struct hv_device*,struct synth_kbd_msg*,int) ;

__attribute__((used)) static void hv_kbd_handle_received_packet(struct hv_device *hv_dev,
       struct vmpacket_descriptor *desc,
       u32 bytes_recvd,
       u64 req_id)
{
 struct synth_kbd_msg *msg;
 u32 msg_sz;

 switch (desc->type) {
 case 129:
  break;

 case 128:
  msg_sz = bytes_recvd - (desc->offset8 << 3);
  if (msg_sz <= sizeof(struct synth_kbd_msg_hdr)) {




   dev_err(&hv_dev->device,
    "Illegal packet (type: %d, tid: %llx, size: %d)\n",
    desc->type, req_id, msg_sz);
   break;
  }

  msg = (void *)desc + (desc->offset8 << 3);
  hv_kbd_on_receive(hv_dev, msg, msg_sz);
  break;

 default:
  dev_err(&hv_dev->device,
   "unhandled packet type %d, tid %llx len %d\n",
   desc->type, req_id, bytes_recvd);
  break;
 }
}
