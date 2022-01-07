
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bus_clk; int iface_clk; int core_clk; } ;


 TYPE_1__* __scm ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void qcom_scm_clk_disable(void)
{
 clk_disable_unprepare(__scm->core_clk);
 clk_disable_unprepare(__scm->iface_clk);
 clk_disable_unprepare(__scm->bus_clk);
}
