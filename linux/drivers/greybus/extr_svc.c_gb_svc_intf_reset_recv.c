
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc_intf_reset_request {int dummy; } ;
struct gb_svc {int dev; } ;
struct gb_operation {struct gb_message* request; int connection; } ;
struct gb_message {int payload_size; struct gb_svc_intf_reset_request* payload; } ;


 int EINVAL ;
 int dev_warn (int *,char*,int,int) ;
 struct gb_svc* gb_connection_get_data (int ) ;

__attribute__((used)) static int gb_svc_intf_reset_recv(struct gb_operation *op)
{
 struct gb_svc *svc = gb_connection_get_data(op->connection);
 struct gb_message *request = op->request;
 struct gb_svc_intf_reset_request *reset;

 if (request->payload_size < sizeof(*reset)) {
  dev_warn(&svc->dev, "short reset request received (%zu < %zu)\n",
    request->payload_size, sizeof(*reset));
  return -EINVAL;
 }
 reset = request->payload;



 return 0;
}
