
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fpga_region {struct fpga_manager* mgr; } ;
struct fpga_manager {int dummy; } ;


 int fpga_mgr_put (struct fpga_manager*) ;
 int fpga_region_unregister (struct fpga_region*) ;
 struct fpga_region* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int of_fpga_region_remove(struct platform_device *pdev)
{
 struct fpga_region *region = platform_get_drvdata(pdev);
 struct fpga_manager *mgr = region->mgr;

 fpga_region_unregister(region);
 fpga_mgr_put(mgr);

 return 0;
}
