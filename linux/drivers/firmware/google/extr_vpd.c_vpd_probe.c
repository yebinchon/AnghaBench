
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbmem_addr; } ;
struct coreboot_device {TYPE_1__ cbmem_ref; } ;


 int ENOMEM ;
 int firmware_kobj ;
 int kobject_create_and_add (char*,int ) ;
 int kobject_put (int ) ;
 int vpd_kobj ;
 int vpd_sections_init (int ) ;

__attribute__((used)) static int vpd_probe(struct coreboot_device *dev)
{
 int ret;

 vpd_kobj = kobject_create_and_add("vpd", firmware_kobj);
 if (!vpd_kobj)
  return -ENOMEM;

 ret = vpd_sections_init(dev->cbmem_ref.cbmem_addr);
 if (ret) {
  kobject_put(vpd_kobj);
  return ret;
 }

 return 0;
}
