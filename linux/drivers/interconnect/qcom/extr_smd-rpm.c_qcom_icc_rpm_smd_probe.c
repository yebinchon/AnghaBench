
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_get_drvdata (int ) ;
 int icc_smd_rpm ;

__attribute__((used)) static int qcom_icc_rpm_smd_probe(struct platform_device *pdev)
{
 icc_smd_rpm = dev_get_drvdata(pdev->dev.parent);

 if (!icc_smd_rpm) {
  dev_err(&pdev->dev, "unable to retrieve handle to RPM\n");
  return -ENODEV;
 }

 return 0;
}
