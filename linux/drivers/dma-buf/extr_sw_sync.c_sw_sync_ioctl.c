
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int dummy; } ;
struct file {struct sync_timeline* private_data; } ;


 long ENOTTY ;


 long sw_sync_ioctl_create_fence (struct sync_timeline*,unsigned long) ;
 long sw_sync_ioctl_inc (struct sync_timeline*,unsigned long) ;

__attribute__((used)) static long sw_sync_ioctl(struct file *file, unsigned int cmd,
     unsigned long arg)
{
 struct sync_timeline *obj = file->private_data;

 switch (cmd) {
 case 129:
  return sw_sync_ioctl_create_fence(obj, arg);

 case 128:
  return sw_sync_ioctl_inc(obj, arg);

 default:
  return -ENOTTY;
 }
}
