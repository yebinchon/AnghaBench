
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gb_operation {TYPE_2__* request; } ;
struct gb_connection {int name; TYPE_1__* hd; } ;
struct TYPE_4__ {int payload; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GB_OPERATION_FLAG_UNIDIRECTIONAL ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int ,int,int) ;
 struct gb_operation* gb_operation_create_flags (struct gb_connection*,int,int,int ,int ,int ) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_request_send_sync_timeout (struct gb_operation*,unsigned int) ;
 int memcpy (int ,void*,int) ;

int gb_operation_unidirectional_timeout(struct gb_connection *connection,
     int type, void *request,
     int request_size,
     unsigned int timeout)
{
 struct gb_operation *operation;
 int ret;

 if (request_size && !request)
  return -EINVAL;

 operation = gb_operation_create_flags(connection, type,
           request_size, 0,
           GB_OPERATION_FLAG_UNIDIRECTIONAL,
           GFP_KERNEL);
 if (!operation)
  return -ENOMEM;

 if (request_size)
  memcpy(operation->request->payload, request, request_size);

 ret = gb_operation_request_send_sync_timeout(operation, timeout);
 if (ret) {
  dev_err(&connection->hd->dev,
   "%s: unidirectional operation of type 0x%02x failed: %d\n",
   connection->name, type, ret);
 }

 gb_operation_put(operation);

 return ret;
}
