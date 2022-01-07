
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dfl_fpga_cdev {int lock; int released_port_num; } ;


 int EBUSY ;
 int ENODEV ;
 struct platform_device* __dfl_fpga_cdev_find_port (struct dfl_fpga_cdev*,int*,int ) ;
 int dev_get_platdata (int *) ;
 scalar_t__ device_is_registered (int *) ;
 int dfl_feature_dev_use_end (int ) ;
 int dfl_fpga_check_port_id ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_device_add (struct platform_device*) ;
 int put_device (int *) ;

int dfl_fpga_cdev_assign_port(struct dfl_fpga_cdev *cdev, int port_id)
{
 struct platform_device *port_pdev;
 int ret = -ENODEV;

 mutex_lock(&cdev->lock);
 port_pdev = __dfl_fpga_cdev_find_port(cdev, &port_id,
           dfl_fpga_check_port_id);
 if (!port_pdev)
  goto unlock_exit;

 if (device_is_registered(&port_pdev->dev)) {
  ret = -EBUSY;
  goto put_dev_exit;
 }

 ret = platform_device_add(port_pdev);
 if (ret)
  goto put_dev_exit;

 dfl_feature_dev_use_end(dev_get_platdata(&port_pdev->dev));
 cdev->released_port_num--;
put_dev_exit:
 put_device(&port_pdev->dev);
unlock_exit:
 mutex_unlock(&cdev->lock);
 return ret;
}
