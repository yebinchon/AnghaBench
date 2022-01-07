
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wuxga_nt_panel {int prepared; int supply; int earliest_wake; } ;
struct drm_panel {int dev; } ;
typedef scalar_t__ s64 ;


 scalar_t__ MIN_POFF_MS ;
 int dev_err (int ,char*,int) ;
 int ktime_get_real () ;
 scalar_t__ ktime_ms_delta (int ,int ) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct wuxga_nt_panel* to_wuxga_nt_panel (struct drm_panel*) ;
 int wuxga_nt_panel_on (struct wuxga_nt_panel*) ;

__attribute__((used)) static int wuxga_nt_panel_prepare(struct drm_panel *panel)
{
 struct wuxga_nt_panel *wuxga_nt = to_wuxga_nt_panel(panel);
 int ret;
 s64 enablewait;

 if (wuxga_nt->prepared)
  return 0;





 enablewait = ktime_ms_delta(wuxga_nt->earliest_wake, ktime_get_real());


 if (enablewait > MIN_POFF_MS)
  enablewait = MIN_POFF_MS;

 if (enablewait > 0)
  msleep(enablewait);

 ret = regulator_enable(wuxga_nt->supply);
 if (ret < 0)
  return ret;





 msleep(250);

 ret = wuxga_nt_panel_on(wuxga_nt);
 if (ret < 0) {
  dev_err(panel->dev, "failed to set panel on: %d\n", ret);
  goto poweroff;
 }

 wuxga_nt->prepared = 1;

 return 0;

poweroff:
 regulator_disable(wuxga_nt->supply);

 return ret;
}
