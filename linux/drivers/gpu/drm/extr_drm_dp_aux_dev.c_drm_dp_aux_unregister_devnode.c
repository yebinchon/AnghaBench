
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_aux_dev {unsigned int index; int refcount; scalar_t__ dev; int usecount; } ;
struct drm_dp_aux {int name; } ;


 int DRM_DEBUG (char*,int ) ;
 int MKDEV (int ,unsigned int) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int aux_idr ;
 int aux_idr_mutex ;
 int device_destroy (int ,int ) ;
 int drm_dev_major ;
 int drm_dp_aux_dev_class ;
 struct drm_dp_aux_dev* drm_dp_aux_dev_get_by_aux (struct drm_dp_aux*) ;
 int idr_remove (int *,unsigned int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_drm_dp_aux_dev ;
 int wait_var_event (int *,int) ;

void drm_dp_aux_unregister_devnode(struct drm_dp_aux *aux)
{
 struct drm_dp_aux_dev *aux_dev;
 unsigned int minor;

 aux_dev = drm_dp_aux_dev_get_by_aux(aux);
 if (!aux_dev)
  return;

 mutex_lock(&aux_idr_mutex);
 idr_remove(&aux_idr, aux_dev->index);
 mutex_unlock(&aux_idr_mutex);

 atomic_dec(&aux_dev->usecount);
 wait_var_event(&aux_dev->usecount, !atomic_read(&aux_dev->usecount));

 minor = aux_dev->index;
 if (aux_dev->dev)
  device_destroy(drm_dp_aux_dev_class,
          MKDEV(drm_dev_major, minor));

 DRM_DEBUG("drm_dp_aux_dev: aux [%s] unregistering\n", aux->name);
 kref_put(&aux_dev->refcount, release_drm_dp_aux_dev);
}
