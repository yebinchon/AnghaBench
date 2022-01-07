
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct clk {int dummy; } ;
typedef int name2 ;


 int EPROBE_DEFER ;
 int IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_warn (int *,char*,char const*,char*) ;
 struct clk* devm_clk_get (int *,char const*) ;
 int snprintf (char*,int,char*,char const*) ;

struct clk *msm_clk_get(struct platform_device *pdev, const char *name)
{
 struct clk *clk;
 char name2[32];

 clk = devm_clk_get(&pdev->dev, name);
 if (!IS_ERR(clk) || PTR_ERR(clk) == -EPROBE_DEFER)
  return clk;

 snprintf(name2, sizeof(name2), "%s_clk", name);

 clk = devm_clk_get(&pdev->dev, name2);
 if (!IS_ERR(clk))
  dev_warn(&pdev->dev, "Using legacy clk name binding.  Use "
    "\"%s\" instead of \"%s\"\n", name, name2);

 return clk;
}
