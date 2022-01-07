
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct gendisk {int disk_name; } ;
struct dm_table {int integrity_supported; struct mapped_device* md; scalar_t__ integrity_added; } ;


 int DMWARN (char*,int ,int ) ;
 int blk_get_integrity (struct gendisk*) ;
 scalar_t__ blk_integrity_compare (int ,struct gendisk*) ;
 int blk_integrity_register (int ,int ) ;
 int dm_device_name (struct mapped_device*) ;
 int dm_disk (struct mapped_device*) ;
 struct gendisk* dm_table_get_integrity_disk (struct dm_table*) ;
 int integrity_profile_exists (int ) ;

__attribute__((used)) static int dm_table_register_integrity(struct dm_table *t)
{
 struct mapped_device *md = t->md;
 struct gendisk *template_disk = ((void*)0);


 if (t->integrity_added)
  return 0;

 template_disk = dm_table_get_integrity_disk(t);
 if (!template_disk)
  return 0;

 if (!integrity_profile_exists(dm_disk(md))) {
  t->integrity_supported = 1;




  blk_integrity_register(dm_disk(md),
           blk_get_integrity(template_disk));
  return 0;
 }





 if (blk_integrity_compare(dm_disk(md), template_disk) < 0) {
  DMWARN("%s: conflict with existing integrity profile: "
         "%s profile mismatch",
         dm_device_name(t->md),
         template_disk->disk_name);
  return 1;
 }


 t->integrity_supported = 1;
 return 0;
}
