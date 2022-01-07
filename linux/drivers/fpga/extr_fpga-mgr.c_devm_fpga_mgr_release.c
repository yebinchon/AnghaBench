
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_manager {int dummy; } ;
struct device {int dummy; } ;


 int fpga_mgr_free (struct fpga_manager*) ;

__attribute__((used)) static void devm_fpga_mgr_release(struct device *dev, void *res)
{
 struct fpga_manager *mgr = *(struct fpga_manager **)res;

 fpga_mgr_free(mgr);
}
