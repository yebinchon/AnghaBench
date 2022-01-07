
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct gb_operation {unsigned long flags; TYPE_1__* request; int waiters; int kref; int completion; int work; int errno; int type; int timer; struct gb_connection* connection; } ;
struct gb_host_device {int dummy; } ;
struct gb_connection {struct gb_host_device* hd; } ;
typedef int gfp_t ;
struct TYPE_3__ {struct gb_operation* operation; } ;


 int EBADR ;
 unsigned long GB_OPERATION_FLAG_INCOMING ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int gb_operation_cache ;
 TYPE_1__* gb_operation_message_alloc (struct gb_host_device*,int ,size_t,int ) ;
 int gb_operation_message_free (TYPE_1__*) ;
 int gb_operation_response_alloc (struct gb_operation*,size_t,int ) ;
 int gb_operation_timeout ;
 int gb_operation_work ;
 int init_completion (int *) ;
 int kmem_cache_free (int ,struct gb_operation*) ;
 struct gb_operation* kmem_cache_zalloc (int ,int ) ;
 int kref_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct gb_operation *
gb_operation_create_common(struct gb_connection *connection, u8 type,
      size_t request_size, size_t response_size,
      unsigned long op_flags, gfp_t gfp_flags)
{
 struct gb_host_device *hd = connection->hd;
 struct gb_operation *operation;

 operation = kmem_cache_zalloc(gb_operation_cache, gfp_flags);
 if (!operation)
  return ((void*)0);
 operation->connection = connection;

 operation->request = gb_operation_message_alloc(hd, type, request_size,
       gfp_flags);
 if (!operation->request)
  goto err_cache;
 operation->request->operation = operation;


 if (!(op_flags & GB_OPERATION_FLAG_INCOMING)) {
  if (!gb_operation_response_alloc(operation, response_size,
       gfp_flags)) {
   goto err_request;
  }

  timer_setup(&operation->timer, gb_operation_timeout, 0);
 }

 operation->flags = op_flags;
 operation->type = type;
 operation->errno = -EBADR;

 INIT_WORK(&operation->work, gb_operation_work);
 init_completion(&operation->completion);
 kref_init(&operation->kref);
 atomic_set(&operation->waiters, 0);

 return operation;

err_request:
 gb_operation_message_free(operation->request);
err_cache:
 kmem_cache_free(gb_operation_cache, operation);

 return ((void*)0);
}
