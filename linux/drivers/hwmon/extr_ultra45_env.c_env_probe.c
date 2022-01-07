
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct platform_device {int * resource; TYPE_1__ dev; } ;
struct env {int regs; int hwmon_dev; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REG_SIZE ;
 struct env* devm_kzalloc (TYPE_1__*,int,int ) ;
 int env_group ;
 int hwmon_device_register (TYPE_1__*) ;
 int of_ioremap (int *,int ,int ,char*) ;
 int of_iounmap (int *,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct env*) ;
 int spin_lock_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int env_probe(struct platform_device *op)
{
 struct env *p = devm_kzalloc(&op->dev, sizeof(*p), GFP_KERNEL);
 int err = -ENOMEM;

 if (!p)
  goto out;

 spin_lock_init(&p->lock);

 p->regs = of_ioremap(&op->resource[0], 0, REG_SIZE, "pic16f747");
 if (!p->regs)
  goto out;

 err = sysfs_create_group(&op->dev.kobj, &env_group);
 if (err)
  goto out_iounmap;

 p->hwmon_dev = hwmon_device_register(&op->dev);
 if (IS_ERR(p->hwmon_dev)) {
  err = PTR_ERR(p->hwmon_dev);
  goto out_sysfs_remove_group;
 }

 platform_set_drvdata(op, p);
 err = 0;

out:
 return err;

out_sysfs_remove_group:
 sysfs_remove_group(&op->dev.kobj, &env_group);

out_iounmap:
 of_iounmap(&op->resource[0], p->regs, REG_SIZE);

 goto out;
}
