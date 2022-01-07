
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_output {int dummy; } ;
struct tegra_hdmi {int * debugfs_files; } ;
struct drm_minor {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;


 unsigned int ARRAY_SIZE (int ) ;
 struct tegra_output* connector_to_output (struct drm_connector*) ;
 int debugfs_files ;
 int drm_debugfs_remove_files (int *,unsigned int,struct drm_minor*) ;
 int kfree (int *) ;
 struct tegra_hdmi* to_hdmi (struct tegra_output*) ;

__attribute__((used)) static void tegra_hdmi_early_unregister(struct drm_connector *connector)
{
 struct tegra_output *output = connector_to_output(connector);
 struct drm_minor *minor = connector->dev->primary;
 unsigned int count = ARRAY_SIZE(debugfs_files);
 struct tegra_hdmi *hdmi = to_hdmi(output);

 drm_debugfs_remove_files(hdmi->debugfs_files, count, minor);
 kfree(hdmi->debugfs_files);
 hdmi->debugfs_files = ((void*)0);
}
