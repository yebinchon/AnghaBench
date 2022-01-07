
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gb_svc_intf_oops_request {int reason; int intf_id; } ;
struct gb_svc {int dev; } ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_interface {int disconnected; int mutex; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_svc_intf_oops_request* payload; } ;


 int dev_info (int *,char*,int ,int ) ;
 int dev_warn (int *,char*,int ) ;
 struct gb_svc* gb_connection_get_data (struct gb_connection*) ;
 int gb_interface_deactivate (struct gb_interface*) ;
 int gb_interface_disable (struct gb_interface*) ;
 struct gb_interface* gb_svc_interface_lookup (struct gb_svc*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_svc_process_intf_oops(struct gb_operation *operation)
{
 struct gb_svc_intf_oops_request *request;
 struct gb_connection *connection = operation->connection;
 struct gb_svc *svc = gb_connection_get_data(connection);
 struct gb_interface *intf;
 u8 intf_id;
 u8 reason;


 request = operation->request->payload;
 intf_id = request->intf_id;
 reason = request->reason;

 intf = gb_svc_interface_lookup(svc, intf_id);
 if (!intf) {
  dev_warn(&svc->dev, "unexpected interface-oops event %u\n",
    intf_id);
  return;
 }

 dev_info(&svc->dev, "Deactivating interface %u, interface oops reason = %u\n",
   intf_id, reason);

 mutex_lock(&intf->mutex);
 intf->disconnected = 1;
 gb_interface_disable(intf);
 gb_interface_deactivate(intf);
 mutex_unlock(&intf->mutex);
}
