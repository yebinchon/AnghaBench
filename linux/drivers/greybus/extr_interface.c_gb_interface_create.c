
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int dma_mask; } ;
struct gb_module {TYPE_4__ dev; struct gb_host_device* hd; } ;
struct TYPE_5__ {int dma_mask; int groups; int * type; int * bus; TYPE_4__* parent; } ;
struct gb_interface {TYPE_1__ dev; int device_id; int mode_switch_completion; int mode_switch_work; int mutex; int manifest_descs; int bundles; int interface_id; struct gb_module* module; struct gb_host_device* hd; } ;
struct gb_host_device {int dummy; } ;


 int GB_INTERFACE_AUTOSUSPEND_MS ;
 int GB_INTERFACE_DEVICE_ID_BAD ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int dev_name (TYPE_4__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_initialize (TYPE_1__*) ;
 int gb_interface_mode_switch_work ;
 int greybus_bus_type ;
 int greybus_interface_type ;
 int init_completion (int *) ;
 int interface_groups ;
 struct gb_interface* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int ) ;
 int trace_gb_interface_create (struct gb_interface*) ;

struct gb_interface *gb_interface_create(struct gb_module *module,
      u8 interface_id)
{
 struct gb_host_device *hd = module->hd;
 struct gb_interface *intf;

 intf = kzalloc(sizeof(*intf), GFP_KERNEL);
 if (!intf)
  return ((void*)0);

 intf->hd = hd;
 intf->module = module;
 intf->interface_id = interface_id;
 INIT_LIST_HEAD(&intf->bundles);
 INIT_LIST_HEAD(&intf->manifest_descs);
 mutex_init(&intf->mutex);
 INIT_WORK(&intf->mode_switch_work, gb_interface_mode_switch_work);
 init_completion(&intf->mode_switch_completion);


 intf->device_id = GB_INTERFACE_DEVICE_ID_BAD;

 intf->dev.parent = &module->dev;
 intf->dev.bus = &greybus_bus_type;
 intf->dev.type = &greybus_interface_type;
 intf->dev.groups = interface_groups;
 intf->dev.dma_mask = module->dev.dma_mask;
 device_initialize(&intf->dev);
 dev_set_name(&intf->dev, "%s.%u", dev_name(&module->dev),
       interface_id);

 pm_runtime_set_autosuspend_delay(&intf->dev,
      GB_INTERFACE_AUTOSUSPEND_MS);

 trace_gb_interface_create(intf);

 return intf;
}
