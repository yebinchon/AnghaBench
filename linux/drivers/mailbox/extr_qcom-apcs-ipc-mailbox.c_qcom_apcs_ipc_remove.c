
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_apcs_ipc {struct platform_device* clk; } ;
struct platform_device {int dummy; } ;


 int platform_device_unregister (struct platform_device*) ;
 struct qcom_apcs_ipc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int qcom_apcs_ipc_remove(struct platform_device *pdev)
{
 struct qcom_apcs_ipc *apcs = platform_get_drvdata(pdev);
 struct platform_device *clk = apcs->clk;

 platform_device_unregister(clk);

 return 0;
}
