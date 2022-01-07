
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_c {int data_dev; int metadata_dev; int pool; } ;
struct dm_target {struct pool_c* private; } ;
struct TYPE_2__ {int mutex; } ;


 int __pool_dec (int ) ;
 int dm_put_device (struct dm_target*,int ) ;
 TYPE_1__ dm_thin_pool_table ;
 int kfree (struct pool_c*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unbind_control_target (int ,struct dm_target*) ;

__attribute__((used)) static void pool_dtr(struct dm_target *ti)
{
 struct pool_c *pt = ti->private;

 mutex_lock(&dm_thin_pool_table.mutex);

 unbind_control_target(pt->pool, ti);
 __pool_dec(pt->pool);
 dm_put_device(ti, pt->metadata_dev);
 dm_put_device(ti, pt->data_dev);
 kfree(pt);

 mutex_unlock(&dm_thin_pool_table.mutex);
}
