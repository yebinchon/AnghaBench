
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int devt; int release; struct device* parent; int * type; } ;
struct scom_device {TYPE_1__ dev; int cdev; struct fsi_device* fsi_dev; int lock; } ;
struct fsi_device {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cdev_device_add (int *,TYPE_1__*) ;
 int cdev_init (int *,int *) ;
 int dev_err (struct device*,char*,int,int ) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_drvdata (struct device*,struct scom_device*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int fsi_cdev_type ;
 int fsi_dev_scom ;
 int fsi_free_minor (int ) ;
 int fsi_get_new_minor (struct fsi_device*,int ,int *,int*) ;
 int get_device (struct device*) ;
 int kfree (struct scom_device*) ;
 struct scom_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int scom_fops ;
 int scom_free ;
 struct fsi_device* to_fsi_dev (struct device*) ;

__attribute__((used)) static int scom_probe(struct device *dev)
{
 struct fsi_device *fsi_dev = to_fsi_dev(dev);
 struct scom_device *scom;
 int rc, didx;

 scom = kzalloc(sizeof(*scom), GFP_KERNEL);
 if (!scom)
  return -ENOMEM;
 dev_set_drvdata(dev, scom);
 mutex_init(&scom->lock);


 if (!get_device(dev)) {
  kfree(scom);
  return -ENODEV;
 }
 scom->fsi_dev = fsi_dev;


 scom->dev.type = &fsi_cdev_type;
 scom->dev.parent = dev;
 scom->dev.release = scom_free;
 device_initialize(&scom->dev);


 rc = fsi_get_new_minor(fsi_dev, fsi_dev_scom, &scom->dev.devt, &didx);
 if (rc)
  goto err;

 dev_set_name(&scom->dev, "scom%d", didx);
 cdev_init(&scom->cdev, &scom_fops);
 rc = cdev_device_add(&scom->cdev, &scom->dev);
 if (rc) {
  dev_err(dev, "Error %d creating char device %s\n",
   rc, dev_name(&scom->dev));
  goto err_free_minor;
 }

 return 0;
 err_free_minor:
 fsi_free_minor(scom->dev.devt);
 err:
 put_device(&scom->dev);
 return rc;
}
