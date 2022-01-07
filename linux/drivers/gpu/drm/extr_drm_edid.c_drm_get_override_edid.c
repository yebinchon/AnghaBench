
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_connector {TYPE_1__* edid_blob_ptr; scalar_t__ override_edid; } ;
struct TYPE_2__ {int data; } ;


 scalar_t__ IS_ERR (struct edid*) ;
 struct edid* drm_edid_duplicate (int ) ;
 struct edid* drm_load_edid_firmware (struct drm_connector*) ;

__attribute__((used)) static struct edid *drm_get_override_edid(struct drm_connector *connector)
{
 struct edid *override = ((void*)0);

 if (connector->override_edid)
  override = drm_edid_duplicate(connector->edid_blob_ptr->data);

 if (!override)
  override = drm_load_edid_firmware(connector);

 return IS_ERR(override) ? ((void*)0) : override;
}
