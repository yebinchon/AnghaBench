
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gb_operation {TYPE_3__* response; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* hd; } ;
struct TYPE_6__ {TYPE_2__* header; } ;
struct TYPE_5__ {int result; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int gb_message_send (TYPE_3__*,int ) ;
 int gb_operation_errno_map (int) ;
 int gb_operation_get (struct gb_operation*) ;
 int gb_operation_get_active (struct gb_operation*) ;
 scalar_t__ gb_operation_is_unidirectional (struct gb_operation*) ;
 int gb_operation_put (struct gb_operation*) ;
 int gb_operation_put_active (struct gb_operation*) ;
 int gb_operation_response_alloc (struct gb_operation*,int ,int ) ;
 int gb_operation_result_set (struct gb_operation*,int) ;

__attribute__((used)) static int gb_operation_response_send(struct gb_operation *operation,
          int errno)
{
 struct gb_connection *connection = operation->connection;
 int ret;

 if (!operation->response &&
     !gb_operation_is_unidirectional(operation)) {
  if (!gb_operation_response_alloc(operation, 0, GFP_KERNEL))
   return -ENOMEM;
 }


 if (!gb_operation_result_set(operation, errno)) {
  dev_err(&connection->hd->dev, "request result already set\n");
  return -EIO;
 }


 if (gb_operation_is_unidirectional(operation))
  return 0;


 gb_operation_get(operation);
 ret = gb_operation_get_active(operation);
 if (ret)
  goto err_put;


 operation->response->header->result = gb_operation_errno_map(errno);

 ret = gb_message_send(operation->response, GFP_KERNEL);
 if (ret)
  goto err_put_active;

 return 0;

err_put_active:
 gb_operation_put_active(operation);
err_put:
 gb_operation_put(operation);

 return ret;
}
