
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userspace_data {int valid; } ;
struct TYPE_2__ {int kobj; } ;
struct devfreq {TYPE_1__ dev; struct userspace_data* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_group ;
 struct userspace_data* kzalloc (int,int ) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int userspace_init(struct devfreq *devfreq)
{
 int err = 0;
 struct userspace_data *data = kzalloc(sizeof(struct userspace_data),
           GFP_KERNEL);

 if (!data) {
  err = -ENOMEM;
  goto out;
 }
 data->valid = 0;
 devfreq->data = data;

 err = sysfs_create_group(&devfreq->dev.kobj, &dev_attr_group);
out:
 return err;
}
