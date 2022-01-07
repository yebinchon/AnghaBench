
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* parent; int dma_mask; int groups; int * type; int * bus; } ;
struct gb_svc {TYPE_1__ dev; int connection; struct gb_host_device* hd; int state; int device_id_map; int wq; } ;
struct TYPE_7__ {int dma_mask; } ;
struct gb_host_device {int bus_id; TYPE_4__ dev; } ;


 int GB_SVC_CPORT_ID ;
 int GB_SVC_STATE_RESET ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int ,int,int ) ;
 int dev_err (TYPE_1__*,char*,int ) ;
 int dev_name (TYPE_4__*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_initialize (TYPE_1__*) ;
 int gb_connection_create_static (struct gb_host_device*,int ,int ) ;
 int gb_connection_set_data (int ,struct gb_svc*) ;
 int gb_svc_request_handler ;
 int greybus_bus_type ;
 int greybus_svc_type ;
 int ida_init (int *) ;
 int kfree (struct gb_svc*) ;
 struct gb_svc* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int svc_groups ;

struct gb_svc *gb_svc_create(struct gb_host_device *hd)
{
 struct gb_svc *svc;

 svc = kzalloc(sizeof(*svc), GFP_KERNEL);
 if (!svc)
  return ((void*)0);

 svc->wq = alloc_workqueue("%s:svc", WQ_UNBOUND, 1, dev_name(&hd->dev));
 if (!svc->wq) {
  kfree(svc);
  return ((void*)0);
 }

 svc->dev.parent = &hd->dev;
 svc->dev.bus = &greybus_bus_type;
 svc->dev.type = &greybus_svc_type;
 svc->dev.groups = svc_groups;
 svc->dev.dma_mask = svc->dev.parent->dma_mask;
 device_initialize(&svc->dev);

 dev_set_name(&svc->dev, "%d-svc", hd->bus_id);

 ida_init(&svc->device_id_map);
 svc->state = GB_SVC_STATE_RESET;
 svc->hd = hd;

 svc->connection = gb_connection_create_static(hd, GB_SVC_CPORT_ID,
            gb_svc_request_handler);
 if (IS_ERR(svc->connection)) {
  dev_err(&svc->dev, "failed to create connection: %ld\n",
   PTR_ERR(svc->connection));
  goto err_put_device;
 }

 gb_connection_set_data(svc->connection, svc);

 return svc;

err_put_device:
 put_device(&svc->dev);
 return ((void*)0);
}
