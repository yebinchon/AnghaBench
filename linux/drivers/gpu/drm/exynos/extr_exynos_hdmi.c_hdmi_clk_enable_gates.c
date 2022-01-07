
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdmi_context {int * clk_gates; TYPE_2__* drv_data; int dev; } ;
struct TYPE_3__ {int count; int * data; } ;
struct TYPE_4__ {TYPE_1__ clk_gates; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int ,int) ;

__attribute__((used)) static int hdmi_clk_enable_gates(struct hdmi_context *hdata)
{
 int i, ret;

 for (i = 0; i < hdata->drv_data->clk_gates.count; ++i) {
  ret = clk_prepare_enable(hdata->clk_gates[i]);
  if (!ret)
   continue;

  dev_err(hdata->dev, "Cannot enable clock '%s', %d\n",
   hdata->drv_data->clk_gates.data[i], ret);
  while (i--)
   clk_disable_unprepare(hdata->clk_gates[i]);
  return ret;
 }

 return 0;
}
