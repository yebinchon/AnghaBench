
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_load_tracker_state {int base; } ;
struct vc4_dev {int load_tracker_enabled; int load_tracker; int ctm_manager; int ctm_state_lock; int async_modeset; } ;
struct vc4_ctm_state {int base; } ;
struct TYPE_2__ {int max_width; int max_height; int preferred_depth; int async_page_flip; int allow_fb_modifiers; int * funcs; int num_crtc; } ;
struct drm_device {int vblank_disable_immediate; int irq_enabled; TYPE_1__ mode_config; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int drm_atomic_private_obj_fini (int *) ;
 int drm_atomic_private_obj_init (struct drm_device*,int *,int *,int *) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_modeset_lock_init (int *) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 void* kzalloc (int,int ) ;
 int sema_init (int *,int) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_ctm_state_funcs ;
 int vc4_load_tracker_state_funcs ;
 int vc4_mode_funcs ;

int vc4_kms_load(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_ctm_state *ctm_state;
 struct vc4_load_tracker_state *load_state;
 int ret;




 vc4->load_tracker_enabled = 1;

 sema_init(&vc4->async_modeset, 1);


 dev->vblank_disable_immediate = 1;

 dev->irq_enabled = 1;
 ret = drm_vblank_init(dev, dev->mode_config.num_crtc);
 if (ret < 0) {
  dev_err(dev->dev, "failed to initialize vblank\n");
  return ret;
 }

 dev->mode_config.max_width = 2048;
 dev->mode_config.max_height = 2048;
 dev->mode_config.funcs = &vc4_mode_funcs;
 dev->mode_config.preferred_depth = 24;
 dev->mode_config.async_page_flip = 1;
 dev->mode_config.allow_fb_modifiers = 1;

 drm_modeset_lock_init(&vc4->ctm_state_lock);

 ctm_state = kzalloc(sizeof(*ctm_state), GFP_KERNEL);
 if (!ctm_state)
  return -ENOMEM;

 drm_atomic_private_obj_init(dev, &vc4->ctm_manager, &ctm_state->base,
        &vc4_ctm_state_funcs);

 load_state = kzalloc(sizeof(*load_state), GFP_KERNEL);
 if (!load_state) {
  drm_atomic_private_obj_fini(&vc4->ctm_manager);
  return -ENOMEM;
 }

 drm_atomic_private_obj_init(dev, &vc4->load_tracker, &load_state->base,
        &vc4_load_tracker_state_funcs);

 drm_mode_config_reset(dev);

 drm_kms_helper_poll_init(dev);

 return 0;
}
