
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_MAJOR ;
 int debugfs_remove (int ) ;
 int drm_connector_ida_destroy () ;
 int drm_debugfs_root ;
 int drm_minors_idr ;
 int drm_sysfs_destroy () ;
 int idr_destroy (int *) ;
 int unregister_chrdev (int ,char*) ;

__attribute__((used)) static void drm_core_exit(void)
{
 unregister_chrdev(DRM_MAJOR, "drm");
 debugfs_remove(drm_debugfs_root);
 drm_sysfs_destroy();
 idr_destroy(&drm_minors_idr);
 drm_connector_ida_destroy();
}
