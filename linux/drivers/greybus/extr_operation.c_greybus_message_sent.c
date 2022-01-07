
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_operation {int work; int type; struct gb_message* response; struct gb_connection* connection; } ;
struct gb_message {struct gb_operation* operation; } ;
struct gb_host_device {int dummy; } ;
struct gb_connection {int name; TYPE_1__* hd; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ,int ,int) ;
 int gb_operation_completion_wq ;
 scalar_t__ gb_operation_is_unidirectional (struct gb_operation*) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_put_active (struct gb_operation*) ;
 scalar_t__ gb_operation_result_set (struct gb_operation*,int) ;
 int queue_work (int ,int *) ;

void greybus_message_sent(struct gb_host_device *hd,
     struct gb_message *message, int status)
{
 struct gb_operation *operation = message->operation;
 struct gb_connection *connection = operation->connection;
 if (message == operation->response) {
  if (status) {
   dev_err(&connection->hd->dev,
    "%s: error sending response 0x%02x: %d\n",
    connection->name, operation->type, status);
  }

  gb_operation_put_active(operation);
  gb_operation_put(operation);
 } else if (status || gb_operation_is_unidirectional(operation)) {
  if (gb_operation_result_set(operation, status)) {
   queue_work(gb_operation_completion_wq,
       &operation->work);
  }
 }
}
