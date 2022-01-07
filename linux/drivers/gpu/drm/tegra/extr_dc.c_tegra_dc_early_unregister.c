
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_dc {int * debugfs_files; } ;
struct drm_minor {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;


 unsigned int ARRAY_SIZE (int ) ;
 int debugfs_files ;
 int drm_debugfs_remove_files (int *,unsigned int,struct drm_minor*) ;
 int kfree (int *) ;
 struct tegra_dc* to_tegra_dc (struct drm_crtc*) ;

__attribute__((used)) static void tegra_dc_early_unregister(struct drm_crtc *crtc)
{
 unsigned int count = ARRAY_SIZE(debugfs_files);
 struct drm_minor *minor = crtc->dev->primary;
 struct tegra_dc *dc = to_tegra_dc(crtc);

 drm_debugfs_remove_files(dc->debugfs_files, count, minor);
 kfree(dc->debugfs_files);
 dc->debugfs_files = ((void*)0);
}
