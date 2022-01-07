
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
struct cdev {int kobj; int owner; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int PTR_ERR (struct device*) ;
 int THIS_MODULE ;
 int cdev_add (struct cdev*,int const,int) ;
 int cdev_del (struct cdev*) ;
 int cdev_init (struct cdev*,struct file_operations const*) ;
 int cdev_set_parent (struct cdev*,struct kobject*) ;
 int class ;
 struct device* device_create (int ,int *,int const,int *,char*,char const*) ;
 int hfi1_dev ;
 int kobject_set_name (int *,char const*) ;
 int pr_err (char*,int,char const*,int) ;
 int user_class ;

int hfi1_cdev_init(int minor, const char *name,
     const struct file_operations *fops,
     struct cdev *cdev, struct device **devp,
     bool user_accessible,
     struct kobject *parent)
{
 const dev_t dev = MKDEV(MAJOR(hfi1_dev), minor);
 struct device *device = ((void*)0);
 int ret;

 cdev_init(cdev, fops);
 cdev->owner = THIS_MODULE;
 cdev_set_parent(cdev, parent);
 kobject_set_name(&cdev->kobj, name);

 ret = cdev_add(cdev, dev, 1);
 if (ret < 0) {
  pr_err("Could not add cdev for minor %d, %s (err %d)\n",
         minor, name, -ret);
  goto done;
 }

 if (user_accessible)
  device = device_create(user_class, ((void*)0), dev, ((void*)0), "%s", name);
 else
  device = device_create(class, ((void*)0), dev, ((void*)0), "%s", name);

 if (IS_ERR(device)) {
  ret = PTR_ERR(device);
  device = ((void*)0);
  pr_err("Could not create device for minor %d, %s (err %d)\n",
   minor, name, -ret);
  cdev_del(cdev);
 }
done:
 *devp = device;
 return ret;
}
