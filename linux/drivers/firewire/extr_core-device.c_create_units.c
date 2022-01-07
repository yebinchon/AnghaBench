
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * parent; int * type; int * bus; } ;
struct TYPE_6__ {int attrs; } ;
struct fw_unit {TYPE_1__ device; TYPE_2__ attribute_group; scalar_t__ directory; } ;
struct fw_device {int device; int * config_rom; } ;
struct fw_csr_iterator {scalar_t__ p; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int BUILD_BUG_ON (int) ;
 int CSR_DIRECTORY ;
 int CSR_UNIT ;
 int GFP_KERNEL ;
 int config_rom_attributes ;
 int dev_name (int *) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 scalar_t__ device_register (TYPE_1__*) ;
 int fw_bus_type ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int *) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 int fw_device_get (struct fw_device*) ;
 int fw_unit_attributes ;
 int fw_unit_type ;
 int init_fw_attribute_group (TYPE_1__*,int ,TYPE_2__*) ;
 int kfree (struct fw_unit*) ;
 struct fw_unit* kzalloc (int,int ) ;

__attribute__((used)) static void create_units(struct fw_device *device)
{
 struct fw_csr_iterator ci;
 struct fw_unit *unit;
 int key, value, i;

 i = 0;
 fw_csr_iterator_init(&ci, &device->config_rom[5]);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  if (key != (CSR_UNIT | CSR_DIRECTORY))
   continue;





  unit = kzalloc(sizeof(*unit), GFP_KERNEL);
  if (unit == ((void*)0))
   continue;

  unit->directory = ci.p + value - 1;
  unit->device.bus = &fw_bus_type;
  unit->device.type = &fw_unit_type;
  unit->device.parent = &device->device;
  dev_set_name(&unit->device, "%s.%d", dev_name(&device->device), i++);

  BUILD_BUG_ON(ARRAY_SIZE(unit->attribute_group.attrs) <
    ARRAY_SIZE(fw_unit_attributes) +
    ARRAY_SIZE(config_rom_attributes));
  init_fw_attribute_group(&unit->device,
     fw_unit_attributes,
     &unit->attribute_group);

  if (device_register(&unit->device) < 0)
   goto skip_unit;

  fw_device_get(device);
  continue;

 skip_unit:
  kfree(unit);
 }
}
