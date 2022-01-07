
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynqmp_ipi_pdata {int dummy; } ;
struct platform_device {int dummy; } ;


 struct zynqmp_ipi_pdata* platform_get_drvdata (struct platform_device*) ;
 int zynqmp_ipi_free_mboxes (struct zynqmp_ipi_pdata*) ;

__attribute__((used)) static int zynqmp_ipi_remove(struct platform_device *pdev)
{
 struct zynqmp_ipi_pdata *pdata;

 pdata = platform_get_drvdata(pdev);
 zynqmp_ipi_free_mboxes(pdata);

 return 0;
}
