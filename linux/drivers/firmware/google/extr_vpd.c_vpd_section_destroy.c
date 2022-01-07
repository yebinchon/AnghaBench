
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpd_section {int enabled; int baseaddr; int raw_name; int bin_attr; int kobj; } ;


 int kfree (int ) ;
 int kobject_put (int ) ;
 int memunmap (int ) ;
 int sysfs_remove_bin_file (int ,int *) ;
 int vpd_kobj ;
 int vpd_section_attrib_destroy (struct vpd_section*) ;

__attribute__((used)) static int vpd_section_destroy(struct vpd_section *sec)
{
 if (sec->enabled) {
  vpd_section_attrib_destroy(sec);
  kobject_put(sec->kobj);
  sysfs_remove_bin_file(vpd_kobj, &sec->bin_attr);
  kfree(sec->raw_name);
  memunmap(sec->baseaddr);
  sec->enabled = 0;
 }

 return 0;
}
