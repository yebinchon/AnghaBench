
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dm_ioctl {int dummy; } ;


 int __list_versions (struct dm_ioctl*,size_t,int *) ;

__attribute__((used)) static int list_versions(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 return __list_versions(param, param_size, ((void*)0));
}
