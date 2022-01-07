
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gb_interface {TYPE_1__* control; } ;
struct gb_control_get_manifest_size_response {int size; } ;
struct gb_connection {TYPE_2__* intf; } ;
typedef int response ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct gb_connection* connection; } ;


 int GB_CONTROL_TYPE_GET_MANIFEST_SIZE ;
 int dev_err (int *,char*,int) ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,struct gb_control_get_manifest_size_response*,int) ;
 int le16_to_cpu (int ) ;

int gb_control_get_manifest_size_operation(struct gb_interface *intf)
{
 struct gb_control_get_manifest_size_response response;
 struct gb_connection *connection = intf->control->connection;
 int ret;

 ret = gb_operation_sync(connection, GB_CONTROL_TYPE_GET_MANIFEST_SIZE,
    ((void*)0), 0, &response, sizeof(response));
 if (ret) {
  dev_err(&connection->intf->dev,
   "failed to get manifest size: %d\n", ret);
  return ret;
 }

 return le16_to_cpu(response.size);
}
