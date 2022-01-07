
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_mode_object {int id; void (* free_cb ) (struct kref*) ;int refcount; int type; } ;
struct TYPE_4__ {int idr_mutex; int object_idr; } ;
struct drm_device {TYPE_2__ mode_config; scalar_t__ registered; TYPE_1__* driver; } ;
struct TYPE_3__ {int load; } ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int idr_alloc (int *,struct drm_mode_object*,int,int ,int ) ;
 int kref_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
     uint32_t obj_type, bool register_obj,
     void (*obj_free_cb)(struct kref *kref))
{
 int ret;

 WARN_ON(!dev->driver->load && dev->registered && !obj_free_cb);

 mutex_lock(&dev->mode_config.idr_mutex);
 ret = idr_alloc(&dev->mode_config.object_idr, register_obj ? obj : ((void*)0),
   1, 0, GFP_KERNEL);
 if (ret >= 0) {




  obj->id = ret;
  obj->type = obj_type;
  if (obj_free_cb) {
   obj->free_cb = obj_free_cb;
   kref_init(&obj->refcount);
  }
 }
 mutex_unlock(&dev->mode_config.idr_mutex);

 return ret < 0 ? ret : 0;
}
