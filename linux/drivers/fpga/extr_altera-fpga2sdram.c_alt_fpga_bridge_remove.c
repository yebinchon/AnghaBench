
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fpga_bridge {int dummy; } ;


 int fpga_bridge_unregister (struct fpga_bridge*) ;
 struct fpga_bridge* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int alt_fpga_bridge_remove(struct platform_device *pdev)
{
 struct fpga_bridge *br = platform_get_drvdata(pdev);

 fpga_bridge_unregister(br);

 return 0;
}
