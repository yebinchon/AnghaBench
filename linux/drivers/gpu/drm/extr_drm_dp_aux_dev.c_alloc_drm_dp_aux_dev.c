
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_dev {int index; int refcount; int usecount; struct drm_dp_aux* aux; } ;
struct drm_dp_aux {int dummy; } ;


 int DRM_AUX_MINORS ;
 int ENOMEM ;
 struct drm_dp_aux_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int aux_idr ;
 int aux_idr_mutex ;
 int idr_alloc (int *,struct drm_dp_aux_dev*,int ,int ,int ) ;
 int kfree (struct drm_dp_aux_dev*) ;
 int kref_init (int *) ;
 struct drm_dp_aux_dev* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct drm_dp_aux_dev *alloc_drm_dp_aux_dev(struct drm_dp_aux *aux)
{
 struct drm_dp_aux_dev *aux_dev;
 int index;

 aux_dev = kzalloc(sizeof(*aux_dev), GFP_KERNEL);
 if (!aux_dev)
  return ERR_PTR(-ENOMEM);
 aux_dev->aux = aux;
 atomic_set(&aux_dev->usecount, 1);
 kref_init(&aux_dev->refcount);

 mutex_lock(&aux_idr_mutex);
 index = idr_alloc(&aux_idr, aux_dev, 0, DRM_AUX_MINORS, GFP_KERNEL);
 mutex_unlock(&aux_idr_mutex);
 if (index < 0) {
  kfree(aux_dev);
  return ERR_PTR(index);
 }
 aux_dev->index = index;

 return aux_dev;
}
