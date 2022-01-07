
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wuxga_nt_panel {int prepared; int earliest_wake; int supply; } ;
struct drm_panel {int dummy; } ;


 int MIN_POFF_MS ;
 int ktime_add_ms (int ,int ) ;
 int ktime_get_real () ;
 int regulator_disable (int ) ;
 struct wuxga_nt_panel* to_wuxga_nt_panel (struct drm_panel*) ;

__attribute__((used)) static int wuxga_nt_panel_unprepare(struct drm_panel *panel)
{
 struct wuxga_nt_panel *wuxga_nt = to_wuxga_nt_panel(panel);

 if (!wuxga_nt->prepared)
  return 0;

 regulator_disable(wuxga_nt->supply);
 wuxga_nt->earliest_wake = ktime_add_ms(ktime_get_real(), MIN_POFF_MS);
 wuxga_nt->prepared = 0;

 return 0;
}
