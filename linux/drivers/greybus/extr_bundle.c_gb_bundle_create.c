
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int dma_mask; } ;
struct gb_interface {int bundles; TYPE_3__ dev; } ;
struct TYPE_5__ {int dma_mask; int groups; int * type; int * bus; TYPE_3__* parent; } ;
struct gb_bundle {int links; TYPE_1__ dev; int connections; scalar_t__ class; scalar_t__ id; struct gb_interface* intf; } ;


 scalar_t__ BUNDLE_ID_NONE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int bundle_groups ;
 int dev_err (TYPE_3__*,char*,scalar_t__) ;
 int dev_name (TYPE_3__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,scalar_t__) ;
 int device_initialize (TYPE_1__*) ;
 scalar_t__ gb_bundle_find (struct gb_interface*,scalar_t__) ;
 int greybus_bundle_type ;
 int greybus_bus_type ;
 struct gb_bundle* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int trace_gb_bundle_create (struct gb_bundle*) ;

struct gb_bundle *gb_bundle_create(struct gb_interface *intf, u8 bundle_id,
       u8 class)
{
 struct gb_bundle *bundle;

 if (bundle_id == BUNDLE_ID_NONE) {
  dev_err(&intf->dev, "can't use bundle id %u\n", bundle_id);
  return ((void*)0);
 }






 if (gb_bundle_find(intf, bundle_id)) {
  dev_err(&intf->dev, "duplicate bundle id %u\n", bundle_id);
  return ((void*)0);
 }

 bundle = kzalloc(sizeof(*bundle), GFP_KERNEL);
 if (!bundle)
  return ((void*)0);

 bundle->intf = intf;
 bundle->id = bundle_id;
 bundle->class = class;
 INIT_LIST_HEAD(&bundle->connections);

 bundle->dev.parent = &intf->dev;
 bundle->dev.bus = &greybus_bus_type;
 bundle->dev.type = &greybus_bundle_type;
 bundle->dev.groups = bundle_groups;
 bundle->dev.dma_mask = intf->dev.dma_mask;
 device_initialize(&bundle->dev);
 dev_set_name(&bundle->dev, "%s.%d", dev_name(&intf->dev), bundle_id);

 list_add(&bundle->links, &intf->bundles);

 trace_gb_bundle_create(bundle);

 return bundle;
}
