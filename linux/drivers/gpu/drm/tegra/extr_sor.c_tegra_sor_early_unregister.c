
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_sor {int * debugfs_files; } ;
struct tegra_output {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {int primary; } ;


 unsigned int ARRAY_SIZE (int ) ;
 struct tegra_output* connector_to_output (struct drm_connector*) ;
 int debugfs_files ;
 int drm_debugfs_remove_files (int *,unsigned int,int ) ;
 int kfree (int *) ;
 struct tegra_sor* to_sor (struct tegra_output*) ;

__attribute__((used)) static void tegra_sor_early_unregister(struct drm_connector *connector)
{
 struct tegra_output *output = connector_to_output(connector);
 unsigned int count = ARRAY_SIZE(debugfs_files);
 struct tegra_sor *sor = to_sor(output);

 drm_debugfs_remove_files(sor->debugfs_files, count,
     connector->dev->primary);
 kfree(sor->debugfs_files);
 sor->debugfs_files = ((void*)0);
}
