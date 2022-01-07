
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * init; } ;
struct mdp4_lvds_pll {TYPE_1__ pll_hw; struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_register (int ,TYPE_1__*) ;
 struct mdp4_lvds_pll* devm_kzalloc (int ,int,int ) ;
 int pll_init ;

struct clk *mpd4_lvds_pll_init(struct drm_device *dev)
{
 struct mdp4_lvds_pll *lvds_pll;
 struct clk *clk;
 int ret;

 lvds_pll = devm_kzalloc(dev->dev, sizeof(*lvds_pll), GFP_KERNEL);
 if (!lvds_pll) {
  ret = -ENOMEM;
  goto fail;
 }

 lvds_pll->dev = dev;

 lvds_pll->pll_hw.init = &pll_init;
 clk = devm_clk_register(dev->dev, &lvds_pll->pll_hw);
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  goto fail;
 }

 return clk;

fail:
 return ERR_PTR(ret);
}
