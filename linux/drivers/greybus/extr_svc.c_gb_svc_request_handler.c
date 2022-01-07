
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gb_svc {int dev; int state; } ;
struct gb_operation {int type; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;


 int EINVAL ;
 int GB_SVC_STATE_PROTOCOL_VERSION ;
 int GB_SVC_STATE_RESET ;
 int GB_SVC_STATE_SVC_HELLO ;







 int dev_warn (int *,char*,int,...) ;
 struct gb_svc* gb_connection_get_data (struct gb_connection*) ;
 int gb_svc_hello (struct gb_operation*) ;
 int gb_svc_intf_mailbox_event_recv (struct gb_operation*) ;
 int gb_svc_intf_oops_recv (struct gb_operation*) ;
 int gb_svc_intf_reset_recv (struct gb_operation*) ;
 int gb_svc_module_inserted_recv (struct gb_operation*) ;
 int gb_svc_module_removed_recv (struct gb_operation*) ;
 int gb_svc_version_request (struct gb_operation*) ;

__attribute__((used)) static int gb_svc_request_handler(struct gb_operation *op)
{
 struct gb_connection *connection = op->connection;
 struct gb_svc *svc = gb_connection_get_data(connection);
 u8 type = op->type;
 int ret = 0;
 switch (type) {
 case 129:
  if (svc->state != GB_SVC_STATE_RESET)
   ret = -EINVAL;
  break;
 case 128:
  if (svc->state != GB_SVC_STATE_PROTOCOL_VERSION)
   ret = -EINVAL;
  break;
 default:
  if (svc->state != GB_SVC_STATE_SVC_HELLO)
   ret = -EINVAL;
  break;
 }

 if (ret) {
  dev_warn(&svc->dev, "unexpected request 0x%02x received (state %u)\n",
    type, svc->state);
  return ret;
 }

 switch (type) {
 case 129:
  ret = gb_svc_version_request(op);
  if (!ret)
   svc->state = GB_SVC_STATE_PROTOCOL_VERSION;
  return ret;
 case 128:
  ret = gb_svc_hello(op);
  if (!ret)
   svc->state = GB_SVC_STATE_SVC_HELLO;
  return ret;
 case 132:
  return gb_svc_intf_reset_recv(op);
 case 131:
  return gb_svc_module_inserted_recv(op);
 case 130:
  return gb_svc_module_removed_recv(op);
 case 134:
  return gb_svc_intf_mailbox_event_recv(op);
 case 133:
  return gb_svc_intf_oops_recv(op);
 default:
  dev_warn(&svc->dev, "unsupported request 0x%02x\n", type);
  return -EINVAL;
 }
}
