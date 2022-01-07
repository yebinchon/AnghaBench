
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct rmi_device*) ;
 struct rmi_device* to_rmi_device (struct device*) ;

__attribute__((used)) static void rmi_release_device(struct device *dev)
{
 struct rmi_device *rmi_dev = to_rmi_device(dev);

 kfree(rmi_dev);
}
