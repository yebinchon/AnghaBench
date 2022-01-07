
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int stats; int table_devices; int disk; } ;


 int MINOR (int ) ;
 int THIS_MODULE ;
 int cleanup_mapped_device (struct mapped_device*) ;
 int disk_devt (int ) ;
 int dm_stats_cleanup (int *) ;
 int free_minor (int) ;
 int free_table_devices (int *) ;
 int kvfree (struct mapped_device*) ;
 int module_put (int ) ;
 int unlock_fs (struct mapped_device*) ;

__attribute__((used)) static void free_dev(struct mapped_device *md)
{
 int minor = MINOR(disk_devt(md->disk));

 unlock_fs(md);

 cleanup_mapped_device(md);

 free_table_devices(&md->table_devices);
 dm_stats_cleanup(&md->stats);
 free_minor(minor);

 module_put(THIS_MODULE);
 kvfree(md);
}
