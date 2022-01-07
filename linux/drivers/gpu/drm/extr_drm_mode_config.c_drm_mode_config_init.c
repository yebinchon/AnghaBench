
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_total_plane; scalar_t__ num_encoder; scalar_t__ num_crtc; scalar_t__ num_connector; scalar_t__ num_fb; int connector_free_work; int connector_free_list; int connector_list_lock; int connector_ida; int tile_idr; int object_idr; int privobj_list; int plane_list; int property_blob_list; int property_list; int encoder_list; int connector_list; int crtc_list; int fb_list; int blob_lock; int fb_lock; int idr_mutex; int connection_mutex; int mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int drm_connector_free_work_fn ;
 int drm_mode_create_standard_properties (struct drm_device*) ;
 int drm_modeset_lock_init (int *) ;
 int ida_init (int *) ;
 int idr_init (int *) ;
 int init_llist_head (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void drm_mode_config_init(struct drm_device *dev)
{
 mutex_init(&dev->mode_config.mutex);
 drm_modeset_lock_init(&dev->mode_config.connection_mutex);
 mutex_init(&dev->mode_config.idr_mutex);
 mutex_init(&dev->mode_config.fb_lock);
 mutex_init(&dev->mode_config.blob_lock);
 INIT_LIST_HEAD(&dev->mode_config.fb_list);
 INIT_LIST_HEAD(&dev->mode_config.crtc_list);
 INIT_LIST_HEAD(&dev->mode_config.connector_list);
 INIT_LIST_HEAD(&dev->mode_config.encoder_list);
 INIT_LIST_HEAD(&dev->mode_config.property_list);
 INIT_LIST_HEAD(&dev->mode_config.property_blob_list);
 INIT_LIST_HEAD(&dev->mode_config.plane_list);
 INIT_LIST_HEAD(&dev->mode_config.privobj_list);
 idr_init(&dev->mode_config.object_idr);
 idr_init(&dev->mode_config.tile_idr);
 ida_init(&dev->mode_config.connector_ida);
 spin_lock_init(&dev->mode_config.connector_list_lock);

 init_llist_head(&dev->mode_config.connector_free_list);
 INIT_WORK(&dev->mode_config.connector_free_work, drm_connector_free_work_fn);

 drm_mode_create_standard_properties(dev);


 dev->mode_config.num_fb = 0;
 dev->mode_config.num_connector = 0;
 dev->mode_config.num_crtc = 0;
 dev->mode_config.num_encoder = 0;
 dev->mode_config.num_total_plane = 0;
}
