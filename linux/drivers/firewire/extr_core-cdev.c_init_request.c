
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int length; int data; int closure; } ;
struct TYPE_8__ {int release; } ;
struct TYPE_6__ {int transaction; TYPE_4__ resource; } ;
struct outbound_transaction_event {TYPE_3__ response; TYPE_2__ r; struct client* client; } ;
struct fw_cdev_send_request {int length; int offset; int generation; int tcode; scalar_t__ data; int closure; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_5__ {int card; } ;


 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TCODE_STREAM_DATA ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int add_client_resource (struct client*,TYPE_4__*,int ) ;
 int complete_transaction ;
 scalar_t__ copy_from_user (int ,int ,int) ;
 int fw_send_request (int ,int *,int ,int,int ,int,int ,int ,int,int ,struct outbound_transaction_event*) ;
 int kfree (struct outbound_transaction_event*) ;
 struct outbound_transaction_event* kmalloc (int,int ) ;
 int release_transaction ;
 int u64_to_uptr (scalar_t__) ;

__attribute__((used)) static int init_request(struct client *client,
   struct fw_cdev_send_request *request,
   int destination_id, int speed)
{
 struct outbound_transaction_event *e;
 int ret;

 if (request->tcode != TCODE_STREAM_DATA &&
     (request->length > 4096 || request->length > 512 << speed))
  return -EIO;

 if (request->tcode == TCODE_WRITE_QUADLET_REQUEST &&
     request->length < 4)
  return -EINVAL;

 e = kmalloc(sizeof(*e) + request->length, GFP_KERNEL);
 if (e == ((void*)0))
  return -ENOMEM;

 e->client = client;
 e->response.length = request->length;
 e->response.closure = request->closure;

 if (request->data &&
     copy_from_user(e->response.data,
      u64_to_uptr(request->data), request->length)) {
  ret = -EFAULT;
  goto failed;
 }

 e->r.resource.release = release_transaction;
 ret = add_client_resource(client, &e->r.resource, GFP_KERNEL);
 if (ret < 0)
  goto failed;

 fw_send_request(client->device->card, &e->r.transaction,
   request->tcode, destination_id, request->generation,
   speed, request->offset, e->response.data,
   request->length, complete_transaction, e);
 return 0;

 failed:
 kfree(e);

 return ret;
}
