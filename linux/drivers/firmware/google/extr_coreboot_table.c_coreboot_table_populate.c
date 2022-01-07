
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct coreboot_table_header {int header_bytes; int table_entries; } ;
struct coreboot_table_entry {scalar_t__ size; } ;
struct TYPE_4__ {int release; int * bus; struct device* parent; } ;
struct coreboot_device {TYPE_1__ dev; int entry; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int coreboot_bus_type ;
 int coreboot_device_release ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_register (TYPE_1__*) ;
 struct coreboot_device* kzalloc (scalar_t__,int ) ;
 int memcpy (int *,void*,scalar_t__) ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int coreboot_table_populate(struct device *dev, void *ptr)
{
 int i, ret;
 void *ptr_entry;
 struct coreboot_device *device;
 struct coreboot_table_entry *entry;
 struct coreboot_table_header *header = ptr;

 ptr_entry = ptr + header->header_bytes;
 for (i = 0; i < header->table_entries; i++) {
  entry = ptr_entry;

  device = kzalloc(sizeof(struct device) + entry->size, GFP_KERNEL);
  if (!device)
   return -ENOMEM;

  dev_set_name(&device->dev, "coreboot%d", i);
  device->dev.parent = dev;
  device->dev.bus = &coreboot_bus_type;
  device->dev.release = coreboot_device_release;
  memcpy(&device->entry, ptr_entry, entry->size);

  ret = device_register(&device->dev);
  if (ret) {
   put_device(&device->dev);
   return ret;
  }

  ptr_entry += entry->size;
 }

 return 0;
}
