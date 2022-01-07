
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_process {int dummy; } ;
struct kfd_ioctl_get_version_args {int minor_version; int major_version; } ;
struct file {int dummy; } ;


 int KFD_IOCTL_MAJOR_VERSION ;
 int KFD_IOCTL_MINOR_VERSION ;

__attribute__((used)) static int kfd_ioctl_get_version(struct file *filep, struct kfd_process *p,
     void *data)
{
 struct kfd_ioctl_get_version_args *args = data;

 args->major_version = KFD_IOCTL_MAJOR_VERSION;
 args->minor_version = KFD_IOCTL_MINOR_VERSION;

 return 0;
}
