
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct fpga_manager* ERR_PTR (int ) ;
 struct fpga_manager* __fpga_mgr_get (struct device*) ;
 struct device* class_find_device (int ,int *,struct device*,int ) ;
 int fpga_mgr_class ;
 int fpga_mgr_dev_match ;

struct fpga_manager *fpga_mgr_get(struct device *dev)
{
 struct device *mgr_dev = class_find_device(fpga_mgr_class, ((void*)0), dev,
         fpga_mgr_dev_match);
 if (!mgr_dev)
  return ERR_PTR(-ENODEV);

 return __fpga_mgr_get(mgr_dev);
}
