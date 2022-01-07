
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct synth_kbd_protocol_response {int proto_status; } ;
struct TYPE_4__ {void* version; } ;
struct TYPE_3__ {void* type; } ;
struct synth_kbd_protocol_request {TYPE_2__ version_requested; TYPE_1__ header; } ;
struct hv_kbd_dev {struct synth_kbd_protocol_response protocol_resp; int wait_event; struct synth_kbd_protocol_request protocol_req; } ;
struct hv_device {int device; int channel; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 int HZ ;
 int PROTOCOL_ACCEPTED ;
 int SYNTH_KBD_PROTOCOL_REQUEST ;
 int SYNTH_KBD_VERSION ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 void* __cpu_to_le32 (int ) ;
 int __le32_to_cpu (int ) ;
 int dev_err (int *,char*,int ) ;
 struct hv_kbd_dev* hv_get_drvdata (struct hv_device*) ;
 int memset (struct synth_kbd_protocol_request*,int ,int) ;
 int vmbus_sendpacket (int ,struct synth_kbd_protocol_request*,int,unsigned long,int ,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int hv_kbd_connect_to_vsp(struct hv_device *hv_dev)
{
 struct hv_kbd_dev *kbd_dev = hv_get_drvdata(hv_dev);
 struct synth_kbd_protocol_request *request;
 struct synth_kbd_protocol_response *response;
 u32 proto_status;
 int error;

 request = &kbd_dev->protocol_req;
 memset(request, 0, sizeof(struct synth_kbd_protocol_request));
 request->header.type = __cpu_to_le32(SYNTH_KBD_PROTOCOL_REQUEST);
 request->version_requested.version = __cpu_to_le32(SYNTH_KBD_VERSION);

 error = vmbus_sendpacket(hv_dev->channel, request,
     sizeof(struct synth_kbd_protocol_request),
     (unsigned long)request,
     VM_PKT_DATA_INBAND,
     VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (error)
  return error;

 if (!wait_for_completion_timeout(&kbd_dev->wait_event, 10 * HZ))
  return -ETIMEDOUT;

 response = &kbd_dev->protocol_resp;
 proto_status = __le32_to_cpu(response->proto_status);
 if (!(proto_status & PROTOCOL_ACCEPTED)) {
  dev_err(&hv_dev->device,
   "synth_kbd protocol request failed (version %d)\n",
          SYNTH_KBD_VERSION);
  return -ENODEV;
 }

 return 0;
}
