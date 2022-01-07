
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_svc_intf_oops_request {int dummy; } ;
struct gb_svc {int dev; } ;
struct gb_operation {TYPE_1__* request; int connection; } ;
struct TYPE_2__ {int payload_size; } ;


 int EINVAL ;
 int dev_warn (int *,char*,int,int) ;
 struct gb_svc* gb_connection_get_data (int ) ;
 int gb_svc_queue_deferred_request (struct gb_operation*) ;

__attribute__((used)) static int gb_svc_intf_oops_recv(struct gb_operation *op)
{
 struct gb_svc *svc = gb_connection_get_data(op->connection);
 struct gb_svc_intf_oops_request *request;

 if (op->request->payload_size < sizeof(*request)) {
  dev_warn(&svc->dev, "short intf-oops request received (%zu < %zu)\n",
    op->request->payload_size, sizeof(*request));
  return -EINVAL;
 }

 return gb_svc_queue_deferred_request(op);
}
