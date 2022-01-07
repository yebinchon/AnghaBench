
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct omap_irq_wait {int dummy; } ;
struct omap_drm_private {int dispc; TYPE_3__* dispc_ops; } ;
struct omap_crtc_state {scalar_t__ manually_updated; } ;
struct omap_crtc {int channel; int enabled; int ignore_digit_sync_lost; int name; TYPE_2__* pipe; } ;
struct drm_device {int dev; struct omap_drm_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; int state; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_6__ {int (* mgr_enable ) (int ,int,int) ;scalar_t__ (* mgr_get_vsync_irq ) (int ,int) ;scalar_t__ (* mgr_get_framedone_irq ) (int ,int) ;} ;
struct TYPE_5__ {TYPE_1__* output; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ OMAP_DISPLAY_TYPE_HDMI ;
 scalar_t__ OMAP_DSS_CHANNEL_DIGIT ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int ,char*) ;
 int mb () ;
 int msecs_to_jiffies (int) ;
 int omap_irq_enable_framedone (struct drm_crtc*,int) ;
 int omap_irq_wait (struct drm_device*,struct omap_irq_wait*,int ) ;
 struct omap_irq_wait* omap_irq_wait_init (struct drm_device*,scalar_t__,int) ;
 int stub1 (int ,int,int) ;
 scalar_t__ stub2 (int ,int) ;
 scalar_t__ stub3 (int ,int) ;
 int stub4 (int ,int,int) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;
 struct omap_crtc_state* to_omap_crtc_state (int ) ;

__attribute__((used)) static void omap_crtc_set_enabled(struct drm_crtc *crtc, bool enable)
{
 struct omap_crtc_state *omap_state = to_omap_crtc_state(crtc->state);
 struct drm_device *dev = crtc->dev;
 struct omap_drm_private *priv = dev->dev_private;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 enum omap_channel channel = omap_crtc->channel;
 struct omap_irq_wait *wait;
 u32 framedone_irq, vsync_irq;
 int ret;

 if (WARN_ON(omap_crtc->enabled == enable))
  return;

 if (omap_state->manually_updated) {
  omap_irq_enable_framedone(crtc, enable);
  omap_crtc->enabled = enable;
  return;
 }

 if (omap_crtc->pipe->output->type == OMAP_DISPLAY_TYPE_HDMI) {
  priv->dispc_ops->mgr_enable(priv->dispc, channel, enable);
  omap_crtc->enabled = enable;
  return;
 }

 if (omap_crtc->channel == OMAP_DSS_CHANNEL_DIGIT) {




  omap_crtc->ignore_digit_sync_lost = 1;
 }

 framedone_irq = priv->dispc_ops->mgr_get_framedone_irq(priv->dispc,
              channel);
 vsync_irq = priv->dispc_ops->mgr_get_vsync_irq(priv->dispc, channel);

 if (enable) {
  wait = omap_irq_wait_init(dev, vsync_irq, 1);
 } else {
  if (framedone_irq)
   wait = omap_irq_wait_init(dev, framedone_irq, 1);
  else
   wait = omap_irq_wait_init(dev, vsync_irq, 2);
 }

 priv->dispc_ops->mgr_enable(priv->dispc, channel, enable);
 omap_crtc->enabled = enable;

 ret = omap_irq_wait(dev, wait, msecs_to_jiffies(100));
 if (ret) {
  dev_err(dev->dev, "%s: timeout waiting for %s\n",
    omap_crtc->name, enable ? "enable" : "disable");
 }

 if (omap_crtc->channel == OMAP_DSS_CHANNEL_DIGIT) {
  omap_crtc->ignore_digit_sync_lost = 0;

  mb();
 }
}
