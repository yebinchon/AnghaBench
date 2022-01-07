
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vidi_context {int dev; TYPE_1__* raw_edid; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int extensions; } ;


 int DRM_DEV_DEBUG_KMS (int ,char*) ;
 int EDID_LENGTH ;
 int EFAULT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct vidi_context* ctx_from_connector (struct drm_connector*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* kmemdup (TYPE_1__*,int,int ) ;

__attribute__((used)) static int vidi_get_modes(struct drm_connector *connector)
{
 struct vidi_context *ctx = ctx_from_connector(connector);
 struct edid *edid;
 int edid_len;





 if (!ctx->raw_edid) {
  DRM_DEV_DEBUG_KMS(ctx->dev, "raw_edid is null.\n");
  return -EFAULT;
 }

 edid_len = (1 + ctx->raw_edid->extensions) * EDID_LENGTH;
 edid = kmemdup(ctx->raw_edid, edid_len, GFP_KERNEL);
 if (!edid) {
  DRM_DEV_DEBUG_KMS(ctx->dev, "failed to allocate edid\n");
  return -ENOMEM;
 }

 drm_connector_update_edid_property(connector, edid);

 return drm_add_edid_modes(connector, edid);
}
