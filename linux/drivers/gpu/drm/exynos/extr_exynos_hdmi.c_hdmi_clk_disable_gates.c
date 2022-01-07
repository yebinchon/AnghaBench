
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdmi_context {int * clk_gates; TYPE_2__* drv_data; } ;
struct TYPE_3__ {int count; } ;
struct TYPE_4__ {TYPE_1__ clk_gates; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void hdmi_clk_disable_gates(struct hdmi_context *hdata)
{
 int i = hdata->drv_data->clk_gates.count;

 while (i--)
  clk_disable_unprepare(hdata->clk_gates[i]);
}
