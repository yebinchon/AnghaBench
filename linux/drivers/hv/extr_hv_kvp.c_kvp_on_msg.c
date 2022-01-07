
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * key; } ;
struct hv_kvp_msg_enumerate {TYPE_2__ data; } ;
struct TYPE_4__ {struct hv_kvp_msg_enumerate kvp_enum_data; } ;
struct hv_kvp_msg {int error; TYPE_1__ body; } ;
struct TYPE_6__ {scalar_t__ state; int recv_channel; } ;


 int EINVAL ;
 scalar_t__ HVUTIL_READY ;
 scalar_t__ HVUTIL_USERSPACE_RECV ;
 scalar_t__ HVUTIL_USERSPACE_REQ ;
 int HV_S_CONT ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int dm_reg_value ;
 int hv_poll_channel (int ,int ) ;
 int kvp_handle_handshake (struct hv_kvp_msg*) ;
 int kvp_poll_wrapper ;
 int kvp_respond_to_host (struct hv_kvp_msg*,int) ;
 int kvp_timeout_work ;
 TYPE_3__ kvp_transaction ;

__attribute__((used)) static int kvp_on_msg(void *msg, int len)
{
 struct hv_kvp_msg *message = (struct hv_kvp_msg *)msg;
 struct hv_kvp_msg_enumerate *data;
 int error = 0;

 if (len < sizeof(*message))
  return -EINVAL;






 if (kvp_transaction.state < HVUTIL_READY) {
  return kvp_handle_handshake(message);
 }


 if (kvp_transaction.state < HVUTIL_USERSPACE_REQ)
  return -EINVAL;

 kvp_transaction.state = HVUTIL_USERSPACE_RECV;






 data = &message->body.kvp_enum_data;

 switch (dm_reg_value) {
 case 129:



  if (data->data.key[0] == 0)
   error = HV_S_CONT;
  break;

 case 128:




  error = message->error;
  break;
 }





 if (cancel_delayed_work_sync(&kvp_timeout_work)) {
  kvp_respond_to_host(message, error);
  hv_poll_channel(kvp_transaction.recv_channel, kvp_poll_wrapper);
 }

 return 0;
}
