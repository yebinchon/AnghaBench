
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {scalar_t__ free_cb; int refcount; int id; } ;


 int DRM_DEBUG (char*,int ,int ) ;
 int kref_put (int *,scalar_t__) ;
 int kref_read (int *) ;

void drm_mode_object_put(struct drm_mode_object *obj)
{
 if (obj->free_cb) {
  DRM_DEBUG("OBJ ID: %d (%d)\n", obj->id, kref_read(&obj->refcount));
  kref_put(&obj->refcount, obj->free_cb);
 }
}
