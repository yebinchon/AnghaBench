
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hdmi_context {TYPE_2__* drv_data; struct clk** clk_muxes; struct device* dev; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int count; int * data; } ;
struct TYPE_4__ {TYPE_1__ clk_muxes; } ;


 int clk_set_parent (struct clk*,struct clk*) ;
 int dev_err (struct device*,char*,int ,int ,int) ;

__attribute__((used)) static int hdmi_clk_set_parents(struct hdmi_context *hdata, bool to_phy)
{
 struct device *dev = hdata->dev;
 int ret = 0;
 int i;

 for (i = 0; i < hdata->drv_data->clk_muxes.count; i += 3) {
  struct clk **c = &hdata->clk_muxes[i];

  ret = clk_set_parent(c[2], c[to_phy]);
  if (!ret)
   continue;

  dev_err(dev, "Cannot set clock parent of '%s' to '%s', %d\n",
   hdata->drv_data->clk_muxes.data[i + 2],
   hdata->drv_data->clk_muxes.data[i + to_phy], ret);
 }

 return ret;
}
