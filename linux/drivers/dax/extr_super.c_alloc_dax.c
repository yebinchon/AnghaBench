
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dax_operations {int dummy; } ;
struct dax_device {void* private; struct dax_operations const* ops; } ;
typedef int dev_t ;


 unsigned long DAXDEV_F_SYNC ;
 int GFP_KERNEL ;
 int MAJOR (int ) ;
 scalar_t__ MINORMASK ;
 int MKDEV (int ,int) ;
 int dax_add_host (struct dax_device*,char const*) ;
 struct dax_device* dax_dev_get (int ) ;
 int dax_devt ;
 int dax_minor_ida ;
 int ida_simple_get (int *,int ,scalar_t__,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (char const*) ;
 char* kstrdup (char const*,int ) ;
 int set_dax_synchronous (struct dax_device*) ;

struct dax_device *alloc_dax(void *private, const char *__host,
  const struct dax_operations *ops, unsigned long flags)
{
 struct dax_device *dax_dev;
 const char *host;
 dev_t devt;
 int minor;

 host = kstrdup(__host, GFP_KERNEL);
 if (__host && !host)
  return ((void*)0);

 minor = ida_simple_get(&dax_minor_ida, 0, MINORMASK+1, GFP_KERNEL);
 if (minor < 0)
  goto err_minor;

 devt = MKDEV(MAJOR(dax_devt), minor);
 dax_dev = dax_dev_get(devt);
 if (!dax_dev)
  goto err_dev;

 dax_add_host(dax_dev, host);
 dax_dev->ops = ops;
 dax_dev->private = private;
 if (flags & DAXDEV_F_SYNC)
  set_dax_synchronous(dax_dev);

 return dax_dev;

 err_dev:
 ida_simple_remove(&dax_minor_ida, minor);
 err_minor:
 kfree(host);
 return ((void*)0);
}
