
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ create_core_data (struct platform_device*,unsigned int,int) ;
 int dev_err (int *,char*,unsigned int) ;

__attribute__((used)) static void
coretemp_add_core(struct platform_device *pdev, unsigned int cpu, int pkg_flag)
{
 if (create_core_data(pdev, cpu, pkg_flag))
  dev_err(&pdev->dev, "Adding Core %u failed\n", cpu);
}
