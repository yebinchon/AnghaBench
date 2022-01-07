
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_operation {TYPE_3__* response; int id; TYPE_1__* request; } ;
struct gb_connection {int name; TYPE_2__* hd; } ;
struct TYPE_6__ {void* payload; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {void* payload; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int ,int ,int,int) ;
 struct gb_operation* gb_operation_create (struct gb_connection*,int,int,int,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync_timeout (struct gb_operation*,unsigned int) ;
 int memcpy (void*,void*,int) ;

int gb_operation_sync_timeout(struct gb_connection *connection, int type,
         void *request, int request_size,
         void *response, int response_size,
         unsigned int timeout)
{
 struct gb_operation *operation;
 int ret;

 if ((response_size && !response) ||
     (request_size && !request))
  return -EINVAL;

 operation = gb_operation_create(connection, type,
     request_size, response_size,
     GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 if (request_size)
  memcpy(operation->request->payload, request, request_size);

 ret = gb_operation_request_send_sync_timeout(operation, timeout);
 if (ret) {
  dev_err(&connection->hd->dev,
   "%s: synchronous operation id 0x%04x of type 0x%02x failed: %d\n",
   connection->name, operation->id, type, ret);
 } else {
  if (response_size) {
   memcpy(response, operation->response->payload,
          response_size);
  }
 }

 gb_operation_put(operation);

 return ret;
}
