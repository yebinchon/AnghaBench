
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dev; } ;
struct gnss_serial {struct gnss_device* gdev; struct serdev_device* serdev; } ;
struct gnss_device {int * ops; } ;


 int ENOMEM ;
 struct gnss_serial* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct gnss_device* gnss_allocate_device (int *) ;
 int gnss_put_device (struct gnss_device*) ;
 int gnss_serial_gnss_ops ;
 int gnss_serial_parse_dt (struct serdev_device*) ;
 int gnss_serial_serdev_ops ;
 int gnss_set_drvdata (struct gnss_device*,struct gnss_serial*) ;
 int kfree (struct gnss_serial*) ;
 struct gnss_serial* kzalloc (int,int ) ;
 int serdev_device_set_client_ops (struct serdev_device*,int *) ;
 int serdev_device_set_drvdata (struct serdev_device*,struct gnss_serial*) ;

struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
      size_t data_size)
{
 struct gnss_serial *gserial;
 struct gnss_device *gdev;
 int ret;

 gserial = kzalloc(sizeof(*gserial) + data_size, GFP_KERNEL);
 if (!gserial)
  return ERR_PTR(-ENOMEM);

 gdev = gnss_allocate_device(&serdev->dev);
 if (!gdev) {
  ret = -ENOMEM;
  goto err_free_gserial;
 }

 gdev->ops = &gnss_serial_gnss_ops;
 gnss_set_drvdata(gdev, gserial);

 gserial->serdev = serdev;
 gserial->gdev = gdev;

 serdev_device_set_drvdata(serdev, gserial);
 serdev_device_set_client_ops(serdev, &gnss_serial_serdev_ops);

 ret = gnss_serial_parse_dt(serdev);
 if (ret)
  goto err_put_device;

 return gserial;

err_put_device:
 gnss_put_device(gserial->gdev);
err_free_gserial:
 kfree(gserial);

 return ERR_PTR(ret);
}
