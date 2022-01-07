
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fpga_manager {int dummy; } ;


 int fpga_mgr_unregister (struct fpga_manager*) ;
 struct fpga_manager* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int zynqmp_fpga_remove(struct platform_device *pdev)
{
 struct fpga_manager *mgr = platform_get_drvdata(pdev);

 fpga_mgr_unregister(mgr);

 return 0;
}
