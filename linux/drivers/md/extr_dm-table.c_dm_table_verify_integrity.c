
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct dm_table {int md; scalar_t__ integrity_supported; scalar_t__ integrity_added; } ;


 int DMWARN (char*,int ) ;
 scalar_t__ blk_integrity_compare (int ,struct gendisk*) ;
 int blk_integrity_unregister (int ) ;
 int dm_device_name (int ) ;
 int dm_disk (int ) ;
 struct gendisk* dm_table_get_integrity_disk (struct dm_table*) ;
 scalar_t__ integrity_profile_exists (int ) ;

__attribute__((used)) static void dm_table_verify_integrity(struct dm_table *t)
{
 struct gendisk *template_disk = ((void*)0);

 if (t->integrity_added)
  return;

 if (t->integrity_supported) {




  template_disk = dm_table_get_integrity_disk(t);
  if (template_disk &&
      blk_integrity_compare(dm_disk(t->md), template_disk) >= 0)
   return;
 }

 if (integrity_profile_exists(dm_disk(t->md))) {
  DMWARN("%s: unable to establish an integrity profile",
         dm_device_name(t->md));
  blk_integrity_unregister(dm_disk(t->md));
 }
}
