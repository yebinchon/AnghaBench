
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 scalar_t__ download_mode ;
 int qcom_scm_set_download_mode (int) ;

__attribute__((used)) static void qcom_scm_shutdown(struct platform_device *pdev)
{

 if (download_mode)
  qcom_scm_set_download_mode(0);
}
