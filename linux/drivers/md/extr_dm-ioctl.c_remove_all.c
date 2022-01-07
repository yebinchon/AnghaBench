
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dm_ioctl {int flags; scalar_t__ data_size; } ;


 int DM_DEFERRED_REMOVE ;
 int dm_hash_remove_all (int,int,int) ;

__attribute__((used)) static int remove_all(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 dm_hash_remove_all(1, !!(param->flags & DM_DEFERRED_REMOVE), 0);
 param->data_size = 0;
 return 0;
}
