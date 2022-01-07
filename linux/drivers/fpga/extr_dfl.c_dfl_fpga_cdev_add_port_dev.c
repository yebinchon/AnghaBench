
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct dfl_fpga_cdev {int lock; int port_dev_list; } ;
struct dfl_feature_platform_data {TYPE_1__* dev; int node; } ;
struct TYPE_2__ {int dev; } ;


 struct dfl_feature_platform_data* dev_get_platdata (int *) ;
 int get_device (int *) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dfl_fpga_cdev_add_port_dev(struct dfl_fpga_cdev *cdev,
           struct platform_device *port)
{
 struct dfl_feature_platform_data *pdata = dev_get_platdata(&port->dev);

 mutex_lock(&cdev->lock);
 list_add(&pdata->node, &cdev->port_dev_list);
 get_device(&pdata->dev->dev);
 mutex_unlock(&cdev->lock);
}
