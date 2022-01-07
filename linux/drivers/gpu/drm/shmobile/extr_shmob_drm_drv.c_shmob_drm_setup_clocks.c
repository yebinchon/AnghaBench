
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmob_drm_device {struct clk* clock; int dev; int lddckr; } ;
struct clk {int dummy; } ;
typedef enum shmob_drm_clk_source { ____Placeholder_shmob_drm_clk_source } shmob_drm_clk_source ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int LDDCKR_ICKSEL_BUS ;
 int LDDCKR_ICKSEL_HDMI ;
 int LDDCKR_ICKSEL_MIPI ;
 int PTR_ERR (struct clk*) ;



 int dev_err (int ,char*,char*) ;
 struct clk* devm_clk_get (int ,char*) ;

__attribute__((used)) static int shmob_drm_setup_clocks(struct shmob_drm_device *sdev,
         enum shmob_drm_clk_source clksrc)
{
 struct clk *clk;
 char *clkname;

 switch (clksrc) {
 case 130:
  clkname = "bus_clk";
  sdev->lddckr = LDDCKR_ICKSEL_BUS;
  break;
 case 128:
  clkname = "peripheral_clk";
  sdev->lddckr = LDDCKR_ICKSEL_MIPI;
  break;
 case 129:
  clkname = ((void*)0);
  sdev->lddckr = LDDCKR_ICKSEL_HDMI;
  break;
 default:
  return -EINVAL;
 }

 clk = devm_clk_get(sdev->dev, clkname);
 if (IS_ERR(clk)) {
  dev_err(sdev->dev, "cannot get dot clock %s\n", clkname);
  return PTR_ERR(clk);
 }

 sdev->clock = clk;
 return 0;
}
