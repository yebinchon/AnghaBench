
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int handle; int * release; } ;
struct TYPE_3__ {int type; int closure; } ;
struct iso_resource_event {int todo; int generation; scalar_t__ channels; scalar_t__ bandwidth; TYPE_2__ resource; TYPE_1__ iso_resource; struct iso_resource_event* e_dealloc; struct iso_resource_event* e_alloc; struct client* client; int work; } ;
struct iso_resource {int todo; int generation; scalar_t__ channels; scalar_t__ bandwidth; TYPE_2__ resource; TYPE_1__ iso_resource; struct iso_resource* e_dealloc; struct iso_resource* e_alloc; struct client* client; int work; } ;
struct fw_cdev_allocate_iso_resource {scalar_t__ channels; scalar_t__ bandwidth; int handle; int closure; } ;
struct client {int dummy; } ;


 scalar_t__ BANDWIDTH_AVAILABLE_INITIAL ;
 int EINVAL ;
 int ENOMEM ;
 int FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED ;
 int FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int ISO_RES_ALLOC ;
 int add_client_resource (struct client*,TYPE_2__*,int ) ;
 int iso_resource_work ;
 int kfree (struct iso_resource_event*) ;
 struct iso_resource_event* kmalloc (int,int ) ;
 int * release_iso_resource ;
 int schedule_iso_resource (struct iso_resource_event*,int ) ;

__attribute__((used)) static int init_iso_resource(struct client *client,
  struct fw_cdev_allocate_iso_resource *request, int todo)
{
 struct iso_resource_event *e1, *e2;
 struct iso_resource *r;
 int ret;

 if ((request->channels == 0 && request->bandwidth == 0) ||
     request->bandwidth > BANDWIDTH_AVAILABLE_INITIAL)
  return -EINVAL;

 r = kmalloc(sizeof(*r), GFP_KERNEL);
 e1 = kmalloc(sizeof(*e1), GFP_KERNEL);
 e2 = kmalloc(sizeof(*e2), GFP_KERNEL);
 if (r == ((void*)0) || e1 == ((void*)0) || e2 == ((void*)0)) {
  ret = -ENOMEM;
  goto fail;
 }

 INIT_DELAYED_WORK(&r->work, iso_resource_work);
 r->client = client;
 r->todo = todo;
 r->generation = -1;
 r->channels = request->channels;
 r->bandwidth = request->bandwidth;
 r->e_alloc = e1;
 r->e_dealloc = e2;

 e1->iso_resource.closure = request->closure;
 e1->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_ALLOCATED;
 e2->iso_resource.closure = request->closure;
 e2->iso_resource.type = FW_CDEV_EVENT_ISO_RESOURCE_DEALLOCATED;

 if (todo == ISO_RES_ALLOC) {
  r->resource.release = release_iso_resource;
  ret = add_client_resource(client, &r->resource, GFP_KERNEL);
  if (ret < 0)
   goto fail;
 } else {
  r->resource.release = ((void*)0);
  r->resource.handle = -1;
  schedule_iso_resource(r, 0);
 }
 request->handle = r->resource.handle;

 return 0;
 fail:
 kfree(r);
 kfree(e1);
 kfree(e2);

 return ret;
}
