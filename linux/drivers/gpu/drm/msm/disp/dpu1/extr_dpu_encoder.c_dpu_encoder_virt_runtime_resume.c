
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int enc_lock; TYPE_3__* cur_master; TYPE_4__* cur_slave; int enabled; } ;
struct TYPE_5__ {int (* restore ) (TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int (* restore ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;


 int _dpu_encoder_virt_enable_helper (struct drm_encoder*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_3__*) ;
 struct dpu_encoder_virt* to_dpu_encoder_virt (struct drm_encoder*) ;

void dpu_encoder_virt_runtime_resume(struct drm_encoder *drm_enc)
{
 struct dpu_encoder_virt *dpu_enc = to_dpu_encoder_virt(drm_enc);

 mutex_lock(&dpu_enc->enc_lock);

 if (!dpu_enc->enabled)
  goto out;

 if (dpu_enc->cur_slave && dpu_enc->cur_slave->ops.restore)
  dpu_enc->cur_slave->ops.restore(dpu_enc->cur_slave);
 if (dpu_enc->cur_master && dpu_enc->cur_master->ops.restore)
  dpu_enc->cur_master->ops.restore(dpu_enc->cur_master);

 _dpu_encoder_virt_enable_helper(drm_enc);

out:
 mutex_unlock(&dpu_enc->enc_lock);
}
