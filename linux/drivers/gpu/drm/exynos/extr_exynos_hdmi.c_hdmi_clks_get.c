
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_array_spec {int count; int * data; } ;
struct hdmi_context {struct device* dev; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (struct device*,char*,int ,int) ;
 struct clk* devm_clk_get (struct device*,int ) ;

__attribute__((used)) static int hdmi_clks_get(struct hdmi_context *hdata,
    const struct string_array_spec *names,
    struct clk **clks)
{
 struct device *dev = hdata->dev;
 int i;

 for (i = 0; i < names->count; ++i) {
  struct clk *clk = devm_clk_get(dev, names->data[i]);

  if (IS_ERR(clk)) {
   int ret = PTR_ERR(clk);

   dev_err(dev, "Cannot get clock %s, %d\n",
    names->data[i], ret);

   return ret;
  }

  clks[i] = clk;
 }

 return 0;
}
