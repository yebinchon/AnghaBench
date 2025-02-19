
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; } ;
struct hdmi_driver_data {TYPE_1__ clk_muxes; TYPE_1__ clk_gates; } ;
struct hdmi_context {struct clk** clk_muxes; struct clk** clk_gates; struct device* dev; struct hdmi_driver_data* drv_data; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct clk** devm_kcalloc (struct device*,int,int,int ) ;
 int hdmi_clks_get (struct hdmi_context*,TYPE_1__*,struct clk**) ;

__attribute__((used)) static int hdmi_clk_init(struct hdmi_context *hdata)
{
 const struct hdmi_driver_data *drv_data = hdata->drv_data;
 int count = drv_data->clk_gates.count + drv_data->clk_muxes.count;
 struct device *dev = hdata->dev;
 struct clk **clks;
 int ret;

 if (!count)
  return 0;

 clks = devm_kcalloc(dev, count, sizeof(*clks), GFP_KERNEL);
 if (!clks)
  return -ENOMEM;

 hdata->clk_gates = clks;
 hdata->clk_muxes = clks + drv_data->clk_gates.count;

 ret = hdmi_clks_get(hdata, &drv_data->clk_gates, hdata->clk_gates);
 if (ret)
  return ret;

 return hdmi_clks_get(hdata, &drv_data->clk_muxes, hdata->clk_muxes);
}
