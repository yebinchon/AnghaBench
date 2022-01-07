
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tc_data {int regmap; int dev; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IN_SEL_REFCLK ;
 int PLLBYP ;
 int PLLEN ;
 int PXL_PLLCTRL ;
 int PXL_PLLPARAM ;
 scalar_t__ abs (int) ;
 int dev_dbg (int ,char*,int,int,...) ;
 int dev_err (int ,char*,int) ;
 int do_div (int,int) ;
 int regmap_write (int ,int ,int) ;
 int tc_pllupdate (struct tc_data*,int ) ;

__attribute__((used)) static int tc_pxl_pll_en(struct tc_data *tc, u32 refclk, u32 pixelclock)
{
 int ret;
 int i_pre, best_pre = 1;
 int i_post, best_post = 1;
 int div, best_div = 1;
 int mul, best_mul = 1;
 int delta, best_delta;
 int ext_div[] = {1, 2, 3, 5, 7};
 int best_pixelclock = 0;
 int vco_hi = 0;
 u32 pxl_pllparam;

 dev_dbg(tc->dev, "PLL: requested %d pixelclock, ref %d\n", pixelclock,
  refclk);
 best_delta = pixelclock;

 for (i_pre = 0; i_pre < ARRAY_SIZE(ext_div); i_pre++) {




  if (refclk / ext_div[i_pre] < 1000000)
   continue;
  for (i_post = 0; i_post < ARRAY_SIZE(ext_div); i_post++) {
   for (div = 1; div <= 16; div++) {
    u32 clk;
    u64 tmp;

    tmp = pixelclock * ext_div[i_pre] *
          ext_div[i_post] * div;
    do_div(tmp, refclk);
    mul = tmp;


    if ((mul < 1) || (mul > 128))
     continue;

    clk = (refclk / ext_div[i_pre] / div) * mul;




    if ((clk > 650000000) || (clk < 150000000))
     continue;

    clk = clk / ext_div[i_post];
    delta = clk - pixelclock;

    if (abs(delta) < abs(best_delta)) {
     best_pre = i_pre;
     best_post = i_post;
     best_div = div;
     best_mul = mul;
     best_delta = delta;
     best_pixelclock = clk;
    }
   }
  }
 }
 if (best_pixelclock == 0) {
  dev_err(tc->dev, "Failed to calc clock for %d pixelclock\n",
   pixelclock);
  return -EINVAL;
 }

 dev_dbg(tc->dev, "PLL: got %d, delta %d\n", best_pixelclock,
  best_delta);
 dev_dbg(tc->dev, "PLL: %d / %d / %d * %d / %d\n", refclk,
  ext_div[best_pre], best_div, best_mul, ext_div[best_post]);


 if (refclk / ext_div[best_pre] / best_div * best_mul >= 300000000)
  vco_hi = 1;

 if (best_div == 16)
  best_div = 0;
 if (best_mul == 128)
  best_mul = 0;


 ret = regmap_write(tc->regmap, PXL_PLLCTRL, PLLBYP | PLLEN);
 if (ret)
  return ret;

 pxl_pllparam = vco_hi << 24;
 pxl_pllparam |= ext_div[best_pre] << 20;
 pxl_pllparam |= ext_div[best_post] << 16;
 pxl_pllparam |= IN_SEL_REFCLK;
 pxl_pllparam |= best_div << 8;
 pxl_pllparam |= best_mul;

 ret = regmap_write(tc->regmap, PXL_PLLPARAM, pxl_pllparam);
 if (ret)
  return ret;


 return tc_pllupdate(tc, PXL_PLLCTRL);
}
