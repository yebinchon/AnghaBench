
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct hash_cell {struct mapped_device* md; } ;
struct dm_ioctl {int dummy; } ;


 struct hash_cell* __find_device_hash_cell (struct dm_ioctl*) ;
 int _hash_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static struct mapped_device *find_device(struct dm_ioctl *param)
{
 struct hash_cell *hc;
 struct mapped_device *md = ((void*)0);

 down_read(&_hash_lock);
 hc = __find_device_hash_cell(param);
 if (hc)
  md = hc->md;
 up_read(&_hash_lock);

 return md;
}
