
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dm_ioctl {int name; } ;


 int __list_versions (struct dm_ioctl*,size_t,int ) ;

__attribute__((used)) static int get_target_version(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 return __list_versions(param, param_size, param->name);
}
