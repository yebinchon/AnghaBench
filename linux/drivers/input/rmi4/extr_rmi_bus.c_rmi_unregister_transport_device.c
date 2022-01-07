
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_transport_dev {struct rmi_device* rmi_dev; } ;
struct rmi_device {int dev; } ;


 int device_del (int *) ;
 int put_device (int *) ;

void rmi_unregister_transport_device(struct rmi_transport_dev *xport)
{
 struct rmi_device *rmi_dev = xport->rmi_dev;

 device_del(&rmi_dev->dev);
 put_device(&rmi_dev->dev);
}
