
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreboot_device {int dummy; } ;


 int kobject_put (int ) ;
 int ro_vpd ;
 int rw_vpd ;
 int vpd_kobj ;
 int vpd_section_destroy (int *) ;

__attribute__((used)) static int vpd_remove(struct coreboot_device *dev)
{
 vpd_section_destroy(&ro_vpd);
 vpd_section_destroy(&rw_vpd);

 kobject_put(vpd_kobj);

 return 0;
}
