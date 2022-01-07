
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_encoder {TYPE_1__ base; } ;
struct dpu_rm {int rm_lock; } ;


 int _dpu_rm_release_reservation (struct dpu_rm*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void dpu_rm_release(struct dpu_rm *rm, struct drm_encoder *enc)
{
 mutex_lock(&rm->rm_lock);

 _dpu_rm_release_reservation(rm, enc->base.id);

 mutex_unlock(&rm->rm_lock);
}
