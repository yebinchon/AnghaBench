
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;


 int __qcom_scm_pas_auth_and_reset (int ,int ) ;
 TYPE_1__* __scm ;
 int qcom_scm_clk_disable () ;
 int qcom_scm_clk_enable () ;

int qcom_scm_pas_auth_and_reset(u32 peripheral)
{
 int ret;

 ret = qcom_scm_clk_enable();
 if (ret)
  return ret;

 ret = __qcom_scm_pas_auth_and_reset(__scm->dev, peripheral);
 qcom_scm_clk_disable();

 return ret;
}
