
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gb_operation {TYPE_1__* request; } ;
struct gb_cport_shutdown_request {int phase; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_cport_shutdown_request* payload; } ;


 int ENOMEM ;
 int GB_REQUEST_TYPE_CPORT_SHUTDOWN ;
 int GFP_KERNEL ;
 struct gb_operation* gb_operation_create_core (struct gb_connection*,int ,int,int ,int ,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync (struct gb_operation*) ;

__attribute__((used)) static int gb_connection_shutdown_operation(struct gb_connection *connection,
         u8 phase)
{
 struct gb_cport_shutdown_request *req;
 struct gb_operation *operation;
 int ret;

 operation = gb_operation_create_core(connection,
          GB_REQUEST_TYPE_CPORT_SHUTDOWN,
          sizeof(*req), 0, 0,
          GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 req = operation->request->payload;
 req->phase = phase;

 ret = gb_operation_request_send_sync(operation);

 gb_operation_put(operation);

 return ret;
}
