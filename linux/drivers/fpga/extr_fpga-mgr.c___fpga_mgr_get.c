
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fpga_manager {int dummy; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int owner; } ;


 int ENODEV ;
 struct fpga_manager* ERR_PTR (int ) ;
 int put_device (struct device*) ;
 struct fpga_manager* to_fpga_manager (struct device*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct fpga_manager *__fpga_mgr_get(struct device *dev)
{
 struct fpga_manager *mgr;

 mgr = to_fpga_manager(dev);

 if (!try_module_get(dev->parent->driver->owner))
  goto err_dev;

 return mgr;

err_dev:
 put_device(dev);
 return ERR_PTR(-ENODEV);
}
