
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_dvo_connector {struct sti_dvo* dvo; } ;
struct sti_dvo {TYPE_1__* drm_dev; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int primary; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 scalar_t__ dvo_debugfs_init (struct sti_dvo*,int ) ;
 struct sti_dvo_connector* to_sti_dvo_connector (struct drm_connector*) ;

__attribute__((used)) static int sti_dvo_late_register(struct drm_connector *connector)
{
 struct sti_dvo_connector *dvo_connector
  = to_sti_dvo_connector(connector);
 struct sti_dvo *dvo = dvo_connector->dvo;

 if (dvo_debugfs_init(dvo, dvo->drm_dev->primary)) {
  DRM_ERROR("DVO debugfs setup failed\n");
  return -EINVAL;
 }

 return 0;
}
