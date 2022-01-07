
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_client {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct hsc_client_data {TYPE_1__ cdev; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 int HSC_DEVS ;
 int cdev_del (TYPE_1__*) ;
 struct hsc_client_data* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_client_set_drvdata (struct hsi_client*,int *) ;
 int kfree (struct hsc_client_data*) ;
 struct hsi_client* to_hsi_client (struct device*) ;
 int unregister_chrdev_region (int ,int ) ;

__attribute__((used)) static int hsc_remove(struct device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev);
 struct hsc_client_data *cl_data = hsi_client_drvdata(cl);
 dev_t hsc_dev = cl_data->cdev.dev;

 cdev_del(&cl_data->cdev);
 unregister_chrdev_region(hsc_dev, HSC_DEVS);
 hsi_client_set_drvdata(cl, ((void*)0));
 kfree(cl_data);

 return 0;
}
