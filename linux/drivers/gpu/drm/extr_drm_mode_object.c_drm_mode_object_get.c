
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_object {int refcount; int id; scalar_t__ free_cb; } ;


 int DRM_DEBUG (char*,int ,int ) ;
 int kref_get (int *) ;
 int kref_read (int *) ;

void drm_mode_object_get(struct drm_mode_object *obj)
{
 if (obj->free_cb) {
  DRM_DEBUG("OBJ ID: %d (%d)\n", obj->id, kref_read(&obj->refcount));
  kref_get(&obj->refcount);
 }
}
