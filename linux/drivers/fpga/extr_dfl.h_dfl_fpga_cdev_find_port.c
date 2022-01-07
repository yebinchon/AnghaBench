
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dfl_fpga_cdev {int lock; } ;


 struct platform_device* __dfl_fpga_cdev_find_port (struct dfl_fpga_cdev*,void*,int (*) (struct platform_device*,void*)) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline struct platform_device *
dfl_fpga_cdev_find_port(struct dfl_fpga_cdev *cdev, void *data,
   int (*match)(struct platform_device *, void *))
{
 struct platform_device *pdev;

 mutex_lock(&cdev->lock);
 pdev = __dfl_fpga_cdev_find_port(cdev, data, match);
 mutex_unlock(&cdev->lock);

 return pdev;
}
