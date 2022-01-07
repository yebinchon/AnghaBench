
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct file {int dummy; } ;
struct dm_ioctl {int dummy; } ;


 int ENXIO ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 int dm_put (struct mapped_device*) ;
 struct mapped_device* find_device (struct dm_ioctl*) ;

__attribute__((used)) static int dev_status(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 struct mapped_device *md;

 md = find_device(param);
 if (!md)
  return -ENXIO;

 __dev_status(md, param);
 dm_put(md);

 return 0;
}
