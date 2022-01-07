
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_file {int dummy; } ;
struct file {struct sync_file* private_data; } ;


 long ENOTTY ;


 long sync_file_ioctl_fence_info (struct sync_file*,unsigned long) ;
 long sync_file_ioctl_merge (struct sync_file*,unsigned long) ;

__attribute__((used)) static long sync_file_ioctl(struct file *file, unsigned int cmd,
       unsigned long arg)
{
 struct sync_file *sync_file = file->private_data;

 switch (cmd) {
 case 128:
  return sync_file_ioctl_merge(sync_file, arg);

 case 129:
  return sync_file_ioctl_fence_info(sync_file, arg);

 default:
  return -ENOTTY;
 }
}
