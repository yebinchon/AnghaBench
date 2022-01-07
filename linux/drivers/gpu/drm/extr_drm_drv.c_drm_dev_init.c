
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int dummy; } ;
struct drm_device {unsigned int driver_features; int struct_mutex; int filelist_mutex; int clientlist_mutex; int master_mutex; int dev; int anon_inode; int event_lock; int vblank_event_list; int clientlist; int filelist_internal; int filelist; struct drm_driver* driver; int ref; } ;
struct device {int dummy; } ;


 int BUG_ON (int) ;
 int DRIVER_GEM ;
 int DRIVER_RENDER ;
 int DRM_ERROR (char*,...) ;
 int DRM_MINOR_PRIMARY ;
 int DRM_MINOR_RENDER ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_name (struct device*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_core_init_complete ;
 int drm_dev_set_unique (struct drm_device*,int ) ;
 int drm_fs_inode_free (int ) ;
 int drm_fs_inode_new () ;
 int drm_gem_destroy (struct drm_device*) ;
 int drm_gem_init (struct drm_device*) ;
 int drm_legacy_create_map_hash (struct drm_device*) ;
 int drm_legacy_ctxbitmap_cleanup (struct drm_device*) ;
 int drm_legacy_ctxbitmap_init (struct drm_device*) ;
 int drm_legacy_destroy_members (struct drm_device*) ;
 int drm_legacy_init_members (struct drm_device*) ;
 int drm_legacy_remove_map_hash (struct drm_device*) ;
 int drm_minor_alloc (struct drm_device*,int ) ;
 int drm_minor_free (struct drm_device*,int ) ;
 int get_device (struct device*) ;
 int kref_init (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int put_device (int ) ;
 int spin_lock_init (int *) ;

int drm_dev_init(struct drm_device *dev,
   struct drm_driver *driver,
   struct device *parent)
{
 int ret;

 if (!drm_core_init_complete) {
  DRM_ERROR("DRM core is not initialized\n");
  return -ENODEV;
 }

 BUG_ON(!parent);

 kref_init(&dev->ref);
 dev->dev = get_device(parent);
 dev->driver = driver;


 dev->driver_features = ~0u;

 drm_legacy_init_members(dev);
 INIT_LIST_HEAD(&dev->filelist);
 INIT_LIST_HEAD(&dev->filelist_internal);
 INIT_LIST_HEAD(&dev->clientlist);
 INIT_LIST_HEAD(&dev->vblank_event_list);

 spin_lock_init(&dev->event_lock);
 mutex_init(&dev->struct_mutex);
 mutex_init(&dev->filelist_mutex);
 mutex_init(&dev->clientlist_mutex);
 mutex_init(&dev->master_mutex);

 dev->anon_inode = drm_fs_inode_new();
 if (IS_ERR(dev->anon_inode)) {
  ret = PTR_ERR(dev->anon_inode);
  DRM_ERROR("Cannot allocate anonymous inode: %d\n", ret);
  goto err_free;
 }

 if (drm_core_check_feature(dev, DRIVER_RENDER)) {
  ret = drm_minor_alloc(dev, DRM_MINOR_RENDER);
  if (ret)
   goto err_minors;
 }

 ret = drm_minor_alloc(dev, DRM_MINOR_PRIMARY);
 if (ret)
  goto err_minors;

 ret = drm_legacy_create_map_hash(dev);
 if (ret)
  goto err_minors;

 drm_legacy_ctxbitmap_init(dev);

 if (drm_core_check_feature(dev, DRIVER_GEM)) {
  ret = drm_gem_init(dev);
  if (ret) {
   DRM_ERROR("Cannot initialize graphics execution manager (GEM)\n");
   goto err_ctxbitmap;
  }
 }

 ret = drm_dev_set_unique(dev, dev_name(parent));
 if (ret)
  goto err_setunique;

 return 0;

err_setunique:
 if (drm_core_check_feature(dev, DRIVER_GEM))
  drm_gem_destroy(dev);
err_ctxbitmap:
 drm_legacy_ctxbitmap_cleanup(dev);
 drm_legacy_remove_map_hash(dev);
err_minors:
 drm_minor_free(dev, DRM_MINOR_PRIMARY);
 drm_minor_free(dev, DRM_MINOR_RENDER);
 drm_fs_inode_free(dev->anon_inode);
err_free:
 put_device(dev->dev);
 mutex_destroy(&dev->master_mutex);
 mutex_destroy(&dev->clientlist_mutex);
 mutex_destroy(&dev->filelist_mutex);
 mutex_destroy(&dev->struct_mutex);
 drm_legacy_destroy_members(dev);
 return ret;
}
