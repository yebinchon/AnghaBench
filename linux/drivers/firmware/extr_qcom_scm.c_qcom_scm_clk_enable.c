
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_clk; int iface_clk; int bus_clk; } ;


 TYPE_1__* __scm ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int qcom_scm_clk_enable(void)
{
 int ret;

 ret = clk_prepare_enable(__scm->core_clk);
 if (ret)
  goto bail;

 ret = clk_prepare_enable(__scm->iface_clk);
 if (ret)
  goto disable_core;

 ret = clk_prepare_enable(__scm->bus_clk);
 if (ret)
  goto disable_iface;

 return 0;

disable_iface:
 clk_disable_unprepare(__scm->iface_clk);
disable_core:
 clk_disable_unprepare(__scm->core_clk);
bail:
 return ret;
}
