
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tegra_dc {int dev; int stats; scalar_t__ rgb; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_2__* dev; TYPE_1__* state; } ;
struct TYPE_4__ {int event_lock; } ;
struct TYPE_3__ {int * event; } ;


 int DC_CMD_DISPLAY_POWER_CONTROL ;
 int PM0_ENABLE ;
 int PM1_ENABLE ;
 int PW0_ENABLE ;
 int PW1_ENABLE ;
 int PW2_ENABLE ;
 int PW3_ENABLE ;
 int PW4_ENABLE ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int pm_runtime_put_sync (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tegra_dc_idle (struct tegra_dc*) ;
 int tegra_dc_readl (struct tegra_dc*,int ) ;
 int tegra_dc_stats_reset (int *) ;
 int tegra_dc_stop (struct tegra_dc*) ;
 int tegra_dc_wait_idle (struct tegra_dc*,int) ;
 int tegra_dc_writel (struct tegra_dc*,int,int ) ;
 struct tegra_dc* to_tegra_dc (struct drm_crtc*) ;

__attribute__((used)) static void tegra_crtc_atomic_disable(struct drm_crtc *crtc,
          struct drm_crtc_state *old_state)
{
 struct tegra_dc *dc = to_tegra_dc(crtc);
 u32 value;

 if (!tegra_dc_idle(dc)) {
  tegra_dc_stop(dc);





  tegra_dc_wait_idle(dc, 100);
 }
 if (dc->rgb) {
  value = tegra_dc_readl(dc, DC_CMD_DISPLAY_POWER_CONTROL);
  value &= ~(PW0_ENABLE | PW1_ENABLE | PW2_ENABLE | PW3_ENABLE |
      PW4_ENABLE | PM0_ENABLE | PM1_ENABLE);
  tegra_dc_writel(dc, value, DC_CMD_DISPLAY_POWER_CONTROL);
 }

 tegra_dc_stats_reset(&dc->stats);
 drm_crtc_vblank_off(crtc);

 spin_lock_irq(&crtc->dev->event_lock);

 if (crtc->state->event) {
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
 }

 spin_unlock_irq(&crtc->dev->event_lock);

 pm_runtime_put_sync(dc->dev);
}
