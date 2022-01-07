
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long u32 ;
struct clk {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {int name; TYPE_1__ base; } ;
struct armada_crtc {TYPE_2__ crtc; } ;
struct armada_clocking_params {int settable; unsigned long div_max; unsigned long permillage_min; unsigned long permillage_max; } ;
struct armada_clk_result {unsigned long desired_clk_hz; unsigned long div; struct clk* clk; } ;


 int BIT (int) ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int DRM_DEBUG_KMS (char*,int ,int ,int,...) ;
 int ERANGE ;
 unsigned long clk_get_rate (struct clk*) ;
 unsigned long clk_round_rate (struct clk*,unsigned long) ;

int armada_crtc_select_clock(struct armada_crtc *dcrtc,
        struct armada_clk_result *res,
        const struct armada_clocking_params *params,
        struct clk *clks[], size_t num_clks,
        unsigned long desired_khz)
{
 unsigned long desired_hz = desired_khz * 1000;
 unsigned long desired_clk_hz;
 unsigned long real_clk_hz;
 unsigned long real_hz;
 unsigned long permillage;
 struct clk *clk;
 u32 div;
 int i;

 DRM_DEBUG_KMS("[CRTC:%u:%s] desired clock=%luHz\n",
        dcrtc->crtc.base.id, dcrtc->crtc.name, desired_hz);

 for (i = 0; i < num_clks; i++) {
  clk = clks[i];
  if (!clk)
   continue;

  if (params->settable & BIT(i)) {
   real_clk_hz = clk_round_rate(clk, desired_hz);
   desired_clk_hz = desired_hz;
  } else {
   real_clk_hz = clk_get_rate(clk);
   desired_clk_hz = real_clk_hz;
  }


  if (real_clk_hz == desired_hz) {
   real_hz = real_clk_hz;
   div = 1;
   goto found;
  }


  div = DIV_ROUND_CLOSEST(real_clk_hz, desired_hz);
  if (div == 0 || div > params->div_max)
   continue;


  real_hz = DIV_ROUND_CLOSEST(real_clk_hz, div);

  DRM_DEBUG_KMS("[CRTC:%u:%s] clk=%u %luHz div=%u real=%luHz\n",
   dcrtc->crtc.base.id, dcrtc->crtc.name,
   i, real_clk_hz, div, real_hz);


  if (real_hz < desired_hz) {
   permillage = real_hz / desired_khz;
   if (permillage < params->permillage_min)
    continue;
  } else {
   permillage = DIV_ROUND_UP(real_hz, desired_khz);
   if (permillage > params->permillage_max)
    continue;
  }
  goto found;
 }

 return -ERANGE;

found:
 DRM_DEBUG_KMS("[CRTC:%u:%s] selected clk=%u %luHz div=%u real=%luHz\n",
  dcrtc->crtc.base.id, dcrtc->crtc.name,
  i, real_clk_hz, div, real_hz);

 res->desired_clk_hz = desired_clk_hz;
 res->clk = clk;
 res->div = div;

 return i;
}
