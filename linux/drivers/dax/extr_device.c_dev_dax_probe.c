
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int start; } ;
struct inode {struct dev_dax* i_cdev; } ;
struct device {int devt; int kobj; TYPE_4__* driver; TYPE_3__* parent; scalar_t__ class; } ;
struct TYPE_10__ {int type; } ;
struct dev_dax {int owner; TYPE_5__ pgmap; TYPE_1__* region; struct dax_device* dax_dev; } ;
struct dax_device {int dummy; } ;
struct cdev {int owner; TYPE_5__ pgmap; TYPE_1__* region; struct dax_device* dax_dev; } ;
struct TYPE_9__ {int owner; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_6__ {struct resource res; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (void*) ;
 int MEMORY_DEVICE_DEVDAX ;
 int PTR_ERR (void*) ;
 int cdev_add (struct dev_dax*,int ,int) ;
 int cdev_init (struct dev_dax*,int *) ;
 int cdev_set_parent (struct dev_dax*,int *) ;
 int dax_fops ;
 struct inode* dax_inode (struct dax_device*) ;
 int dev_dax_cdev_del ;
 int dev_dax_kill ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,struct resource*) ;
 int devm_add_action_or_reset (struct device*,int ,struct dev_dax*) ;
 void* devm_memremap_pages (struct device*,TYPE_5__*) ;
 int devm_request_mem_region (struct device*,int ,int ,int ) ;
 int resource_size (struct resource*) ;
 int run_dax (struct dax_device*) ;
 struct dev_dax* to_dev_dax (struct device*) ;

int dev_dax_probe(struct device *dev)
{
 struct dev_dax *dev_dax = to_dev_dax(dev);
 struct dax_device *dax_dev = dev_dax->dax_dev;
 struct resource *res = &dev_dax->region->res;
 struct inode *inode;
 struct cdev *cdev;
 void *addr;
 int rc;


 if (!devm_request_mem_region(dev, res->start, resource_size(res),
    dev_name(dev))) {
  dev_warn(dev, "could not reserve region %pR\n", res);
  return -EBUSY;
 }

 dev_dax->pgmap.type = MEMORY_DEVICE_DEVDAX;
 addr = devm_memremap_pages(dev, &dev_dax->pgmap);
 if (IS_ERR(addr))
  return PTR_ERR(addr);

 inode = dax_inode(dax_dev);
 cdev = inode->i_cdev;
 cdev_init(cdev, &dax_fops);
 if (dev->class) {

  cdev->owner = dev->parent->driver->owner;
 } else
  cdev->owner = dev->driver->owner;
 cdev_set_parent(cdev, &dev->kobj);
 rc = cdev_add(cdev, dev->devt, 1);
 if (rc)
  return rc;

 rc = devm_add_action_or_reset(dev, dev_dax_cdev_del, cdev);
 if (rc)
  return rc;

 run_dax(dax_dev);
 return devm_add_action_or_reset(dev, dev_dax_kill, dev_dax);
}
