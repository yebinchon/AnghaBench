
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct dm_file* private_data; } ;
struct dm_ioctl {int dummy; } ;
struct dm_file {int global_event_nr; } ;


 int atomic_read (int *) ;
 int dm_global_event_nr ;

__attribute__((used)) static int dev_arm_poll(struct file *filp, struct dm_ioctl *param, size_t param_size)
{
 struct dm_file *priv = filp->private_data;

 priv->global_event_nr = atomic_read(&dm_global_event_nr);

 return 0;
}
