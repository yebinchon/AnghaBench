
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * icc_smd_rpm ;

__attribute__((used)) static int qcom_icc_rpm_smd_remove(struct platform_device *pdev)
{
 icc_smd_rpm = ((void*)0);

 return 0;
}
