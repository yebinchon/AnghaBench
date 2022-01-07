
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct drm_file {int dummy; } ;
struct TYPE_2__ {int object_name_lock; } ;


 int drm_gem_handle_create_tail (struct drm_file*,struct drm_gem_object*,int *) ;
 int mutex_lock (int *) ;

int drm_gem_handle_create(struct drm_file *file_priv,
     struct drm_gem_object *obj,
     u32 *handlep)
{
 mutex_lock(&obj->dev->object_name_lock);

 return drm_gem_handle_create_tail(file_priv, obj, handlep);
}
