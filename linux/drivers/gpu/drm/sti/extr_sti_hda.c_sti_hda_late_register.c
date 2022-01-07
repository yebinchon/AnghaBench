
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_hda_connector {struct sti_hda* hda; } ;
struct sti_hda {TYPE_1__* drm_dev; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int primary; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ hda_debugfs_init (struct sti_hda*,int ) ;
 struct sti_hda_connector* to_sti_hda_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_hda_late_register(struct drm_connector *connector)
{
 struct sti_hda_connector *hda_connector
  = to_sti_hda_connector(connector);
 struct sti_hda *hda = hda_connector->hda;

 if (hda_debugfs_init(hda, hda->drm_dev->primary)) {
  DRM_ERROR("HDA debugfs setup failed\n");
  return -EINVAL;
 }

 return 0;
}
