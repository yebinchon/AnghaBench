
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int family; } ;
struct nvif_device {TYPE_2__ info; } ;
struct nouveau_encoder {int dummy; } ;
struct TYPE_11__ {struct nvif_device device; } ;
struct nouveau_drm {TYPE_1__ client; } ;
struct nouveau_backlight {scalar_t__ id; TYPE_5__* dev; } ;
struct drm_connector {scalar_t__ connector_type; int kdev; int dev; } ;
struct backlight_properties {int member_0; } ;
struct backlight_ops {int dummy; } ;
struct TYPE_16__ {struct nouveau_backlight* backlight; } ;
struct TYPE_13__ {int brightness; } ;
struct TYPE_15__ {TYPE_4__* ops; TYPE_3__ props; } ;
struct TYPE_14__ {int (* get_brightness ) (TYPE_5__*) ;} ;


 int BL_NAME_SIZE ;
 int DCB_OUTPUT_DP ;
 int DCB_OUTPUT_LVDS ;
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_5__*) ;
 int NV_ERROR (struct nouveau_drm*,char*) ;
 int NV_INFO_ONCE (struct nouveau_drm*,char*) ;
 int PTR_ERR (TYPE_5__*) ;
 scalar_t__ apple_gmux_present () ;
 TYPE_5__* backlight_device_register (char*,int ,struct nouveau_encoder*,struct backlight_ops const*,struct backlight_properties*) ;
 int backlight_update_status (TYPE_5__*) ;
 int bl_ida ;
 struct nouveau_encoder* find_encoder (struct drm_connector*,int ) ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct nouveau_backlight*) ;
 struct nouveau_backlight* kzalloc (int,int ) ;
 TYPE_6__* nouveau_connector (struct drm_connector*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nouveau_get_backlight_name (char*,struct nouveau_backlight*) ;
 int nv40_backlight_init (struct nouveau_encoder*,struct backlight_properties*,struct backlight_ops const**) ;
 int nv50_backlight_init (struct nouveau_encoder*,struct backlight_properties*,struct backlight_ops const**) ;
 int stub1 (TYPE_5__*) ;

int
nouveau_backlight_init(struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nouveau_backlight *bl;
 struct nouveau_encoder *nv_encoder = ((void*)0);
 struct nvif_device *device = &drm->client.device;
 char backlight_name[BL_NAME_SIZE];
 struct backlight_properties props = {0};
 const struct backlight_ops *ops;
 int ret;

 if (apple_gmux_present()) {
  NV_INFO_ONCE(drm, "Apple GMUX detected: not registering Nouveau backlight interface\n");
  return 0;
 }

 if (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
  nv_encoder = find_encoder(connector, DCB_OUTPUT_LVDS);
 else if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
  nv_encoder = find_encoder(connector, DCB_OUTPUT_DP);
 else
  return 0;

 if (!nv_encoder)
  return 0;

 switch (device->info.family) {
 case 135:
  ret = nv40_backlight_init(nv_encoder, &props, &ops);
  break;
 case 130:
 case 134:
 case 133:
 case 132:
 case 131:
 case 128:
 case 129:
  ret = nv50_backlight_init(nv_encoder, &props, &ops);
  break;
 default:
  return 0;
 }

 if (ret == -ENODEV)
  return 0;
 else if (ret)
  return ret;

 bl = kzalloc(sizeof(*bl), GFP_KERNEL);
 if (!bl)
  return -ENOMEM;

 if (!nouveau_get_backlight_name(backlight_name, bl)) {
  NV_ERROR(drm, "Failed to retrieve a unique name for the backlight interface\n");
  goto fail_alloc;
 }

 bl->dev = backlight_device_register(backlight_name, connector->kdev,
         nv_encoder, ops, &props);
 if (IS_ERR(bl->dev)) {
  if (bl->id >= 0)
   ida_simple_remove(&bl_ida, bl->id);
  ret = PTR_ERR(bl->dev);
  goto fail_alloc;
 }

 nouveau_connector(connector)->backlight = bl;
 bl->dev->props.brightness = bl->dev->ops->get_brightness(bl->dev);
 backlight_update_status(bl->dev);

 return 0;

fail_alloc:
 kfree(bl);
 return ret;
}
