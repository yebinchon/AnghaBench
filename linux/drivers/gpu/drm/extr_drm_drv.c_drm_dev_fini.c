
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int unique; int struct_mutex; int filelist_mutex; int clientlist_mutex; int master_mutex; int dev; int anon_inode; } ;


 int DRIVER_GEM ;
 int DRM_MINOR_PRIMARY ;
 int DRM_MINOR_RENDER ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_fs_inode_free (int ) ;
 int drm_gem_destroy (struct drm_device*) ;
 int drm_legacy_ctxbitmap_cleanup (struct drm_device*) ;
 int drm_legacy_destroy_members (struct drm_device*) ;
 int drm_legacy_remove_map_hash (struct drm_device*) ;
 int drm_minor_free (struct drm_device*,int ) ;
 int drm_vblank_cleanup (struct drm_device*) ;
 int kfree (int ) ;
 int mutex_destroy (int *) ;
 int put_device (int ) ;

void drm_dev_fini(struct drm_device *dev)
{
 drm_vblank_cleanup(dev);

 if (drm_core_check_feature(dev, DRIVER_GEM))
  drm_gem_destroy(dev);

 drm_legacy_ctxbitmap_cleanup(dev);
 drm_legacy_remove_map_hash(dev);
 drm_fs_inode_free(dev->anon_inode);

 drm_minor_free(dev, DRM_MINOR_PRIMARY);
 drm_minor_free(dev, DRM_MINOR_RENDER);

 put_device(dev->dev);

 mutex_destroy(&dev->master_mutex);
 mutex_destroy(&dev->clientlist_mutex);
 mutex_destroy(&dev->filelist_mutex);
 mutex_destroy(&dev->struct_mutex);
 drm_legacy_destroy_members(dev);
 kfree(dev->unique);
}
