
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int ENXIO ;
 struct mapped_device* alloc_dev (int) ;
 int dm_sysfs_init (struct mapped_device*) ;
 int free_dev (struct mapped_device*) ;

int dm_create(int minor, struct mapped_device **result)
{
 int r;
 struct mapped_device *md;

 md = alloc_dev(minor);
 if (!md)
  return -ENXIO;

 r = dm_sysfs_init(md);
 if (r) {
  free_dev(md);
  return r;
 }

 *result = md;
 return 0;
}
