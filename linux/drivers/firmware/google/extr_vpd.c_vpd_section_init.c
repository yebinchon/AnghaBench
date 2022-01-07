
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; scalar_t__ name; } ;
struct TYPE_6__ {size_t size; struct vpd_section* private; int read; TYPE_1__ attr; } ;
struct vpd_section {char const* name; int enabled; int baseaddr; scalar_t__ raw_name; TYPE_2__ bin_attr; int attribs; int kobj; } ;
typedef int phys_addr_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MEMREMAP_WB ;
 scalar_t__ kasprintf (int ,char*,char const*) ;
 int kfree (scalar_t__) ;
 int kobject_create_and_add (char const*,int ) ;
 int memremap (int ,size_t,int ) ;
 int memunmap (int ) ;
 int sysfs_bin_attr_init (TYPE_2__*) ;
 int sysfs_create_bin_file (int ,TYPE_2__*) ;
 int sysfs_remove_bin_file (int ,TYPE_2__*) ;
 int vpd_kobj ;
 int vpd_section_create_attribs (struct vpd_section*) ;
 int vpd_section_read ;

__attribute__((used)) static int vpd_section_init(const char *name, struct vpd_section *sec,
       phys_addr_t physaddr, size_t size)
{
 int err;

 sec->baseaddr = memremap(physaddr, size, MEMREMAP_WB);
 if (!sec->baseaddr)
  return -ENOMEM;

 sec->name = name;


 sec->raw_name = kasprintf(GFP_KERNEL, "%s_raw", name);
 if (!sec->raw_name) {
  err = -ENOMEM;
  goto err_memunmap;
 }

 sysfs_bin_attr_init(&sec->bin_attr);
 sec->bin_attr.attr.name = sec->raw_name;
 sec->bin_attr.attr.mode = 0444;
 sec->bin_attr.size = size;
 sec->bin_attr.read = vpd_section_read;
 sec->bin_attr.private = sec;

 err = sysfs_create_bin_file(vpd_kobj, &sec->bin_attr);
 if (err)
  goto err_free_raw_name;

 sec->kobj = kobject_create_and_add(name, vpd_kobj);
 if (!sec->kobj) {
  err = -EINVAL;
  goto err_sysfs_remove;
 }

 INIT_LIST_HEAD(&sec->attribs);
 vpd_section_create_attribs(sec);

 sec->enabled = 1;

 return 0;

err_sysfs_remove:
 sysfs_remove_bin_file(vpd_kobj, &sec->bin_attr);
err_free_raw_name:
 kfree(sec->raw_name);
err_memunmap:
 memunmap(sec->baseaddr);
 return err;
}
