
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_tile_group {int id; struct drm_device* dev; int group_data; int refcount; } ;
struct TYPE_2__ {int idr_mutex; int tile_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int GFP_KERNEL ;
 int idr_alloc (int *,struct drm_tile_group*,int,int ,int ) ;
 int kfree (struct drm_tile_group*) ;
 int kref_init (int *) ;
 struct drm_tile_group* kzalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct drm_tile_group *drm_mode_create_tile_group(struct drm_device *dev,
        char topology[8])
{
 struct drm_tile_group *tg;
 int ret;

 tg = kzalloc(sizeof(*tg), GFP_KERNEL);
 if (!tg)
  return ((void*)0);

 kref_init(&tg->refcount);
 memcpy(tg->group_data, topology, 8);
 tg->dev = dev;

 mutex_lock(&dev->mode_config.idr_mutex);
 ret = idr_alloc(&dev->mode_config.tile_idr, tg, 1, 0, GFP_KERNEL);
 if (ret >= 0) {
  tg->id = ret;
 } else {
  kfree(tg);
  tg = ((void*)0);
 }

 mutex_unlock(&dev->mode_config.idr_mutex);
 return tg;
}
