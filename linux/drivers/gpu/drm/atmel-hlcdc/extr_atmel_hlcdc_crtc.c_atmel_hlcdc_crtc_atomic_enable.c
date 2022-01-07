
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct drm_device {int dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct atmel_hlcdc_crtc {TYPE_2__* dc; } ;
struct TYPE_4__ {TYPE_1__* hlcdc; } ;
struct TYPE_3__ {int sys_clk; struct regmap* regmap; } ;


 unsigned int ATMEL_HLCDC_DISP ;
 int ATMEL_HLCDC_EN ;
 unsigned int ATMEL_HLCDC_PIXEL_CLK ;
 int ATMEL_HLCDC_SR ;
 unsigned int ATMEL_HLCDC_SYNC ;
 int clk_prepare_enable (int ) ;
 int cpu_relax () ;
 struct atmel_hlcdc_crtc* drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int pinctrl_pm_select_default_state (int ) ;
 int pm_runtime_forbid (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static void atmel_hlcdc_crtc_atomic_enable(struct drm_crtc *c,
        struct drm_crtc_state *old_state)
{
 struct drm_device *dev = c->dev;
 struct atmel_hlcdc_crtc *crtc = drm_crtc_to_atmel_hlcdc_crtc(c);
 struct regmap *regmap = crtc->dc->hlcdc->regmap;
 unsigned int status;

 pm_runtime_get_sync(dev->dev);

 pm_runtime_forbid(dev->dev);

 pinctrl_pm_select_default_state(dev->dev);
 clk_prepare_enable(crtc->dc->hlcdc->sys_clk);

 regmap_write(regmap, ATMEL_HLCDC_EN, ATMEL_HLCDC_PIXEL_CLK);
 while (!regmap_read(regmap, ATMEL_HLCDC_SR, &status) &&
        !(status & ATMEL_HLCDC_PIXEL_CLK))
  cpu_relax();


 regmap_write(regmap, ATMEL_HLCDC_EN, ATMEL_HLCDC_SYNC);
 while (!regmap_read(regmap, ATMEL_HLCDC_SR, &status) &&
        !(status & ATMEL_HLCDC_SYNC))
  cpu_relax();

 regmap_write(regmap, ATMEL_HLCDC_EN, ATMEL_HLCDC_DISP);
 while (!regmap_read(regmap, ATMEL_HLCDC_SR, &status) &&
        !(status & ATMEL_HLCDC_DISP))
  cpu_relax();

 pm_runtime_put_sync(dev->dev);

 drm_crtc_vblank_on(c);
}
