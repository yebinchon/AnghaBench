
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int dummy; } ;
struct TYPE_2__ {struct i3c_master_controller* master; } ;
struct i3c_dev_desc {int ibi_lock; struct i3c_device_info info; TYPE_1__ common; } ;


 int ENOMEM ;
 struct i3c_dev_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct i3c_dev_desc* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct i3c_dev_desc *
i3c_master_alloc_i3c_dev(struct i3c_master_controller *master,
    const struct i3c_device_info *info)
{
 struct i3c_dev_desc *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 dev->common.master = master;
 dev->info = *info;
 mutex_init(&dev->ibi_lock);

 return dev;
}
