
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_device {int dev; } ;
struct dpu_encoder_virt {int enabled; struct drm_encoder base; int enc_spinlock; } ;


 int ENOMEM ;
 struct drm_encoder* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int devm_kfree (int ,struct dpu_encoder_virt*) ;
 struct dpu_encoder_virt* devm_kzalloc (int ,int,int ) ;
 int dpu_encoder_funcs ;
 int dpu_encoder_helper_funcs ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int,int *) ;
 int spin_lock_init (int *) ;

struct drm_encoder *dpu_encoder_init(struct drm_device *dev,
  int drm_enc_mode)
{
 struct dpu_encoder_virt *dpu_enc = ((void*)0);
 int rc = 0;

 dpu_enc = devm_kzalloc(dev->dev, sizeof(*dpu_enc), GFP_KERNEL);
 if (!dpu_enc)
  return ERR_PTR(ENOMEM);

 rc = drm_encoder_init(dev, &dpu_enc->base, &dpu_encoder_funcs,
   drm_enc_mode, ((void*)0));
 if (rc) {
  devm_kfree(dev->dev, dpu_enc);
  return ERR_PTR(rc);
 }

 drm_encoder_helper_add(&dpu_enc->base, &dpu_encoder_helper_funcs);

 spin_lock_init(&dpu_enc->enc_spinlock);
 dpu_enc->enabled = 0;

 return &dpu_enc->base;
}
