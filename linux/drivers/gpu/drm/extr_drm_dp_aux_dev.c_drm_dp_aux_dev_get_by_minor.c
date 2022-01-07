
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_dev {int refcount; } ;


 int aux_idr ;
 int aux_idr_mutex ;
 struct drm_dp_aux_dev* idr_find (int *,unsigned int) ;
 int kref_get_unless_zero (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct drm_dp_aux_dev *drm_dp_aux_dev_get_by_minor(unsigned index)
{
 struct drm_dp_aux_dev *aux_dev = ((void*)0);

 mutex_lock(&aux_idr_mutex);
 aux_dev = idr_find(&aux_idr, index);
 if (!kref_get_unless_zero(&aux_dev->refcount))
  aux_dev = ((void*)0);
 mutex_unlock(&aux_idr_mutex);

 return aux_dev;
}
