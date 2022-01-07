
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ida {int dummy; } ;
struct drm_mode_config {struct ida connector_ida; int prop_crtc_id; int tile_property; int non_desktop_property; int link_status_property; int dpms_property; int connector_list_lock; int num_connector; int connector_list; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector_funcs {int atomic_duplicate_state; int atomic_destroy_state; } ;
struct TYPE_7__ {int * properties; } ;
struct TYPE_6__ {int panel_orientation; } ;
struct drm_connector {int index; int connector_type; int connector_type_id; TYPE_2__ base; int * debugfs_entry; int head; TYPE_1__ display_info; int status; int * tile_blob_ptr; int * edid_blob_ptr; int mutex; int modes; int probed_modes; int name; struct drm_connector_funcs const* funcs; struct drm_device* dev; int properties; } ;
struct TYPE_8__ {int name; struct ida ida; } ;


 int DRIVER_ATOMIC ;
 int DRM_DEBUG_KMS (char*,int ,int) ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_CONNECTOR_WRITEBACK ;
 int DRM_MODE_OBJECT_CONNECTOR ;
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int __drm_mode_object_add (struct drm_device*,TYPE_2__*,int ,int,int ) ;
 int connector_status_unknown ;
 int drm_connector_attach_edid_property (struct drm_connector*) ;
 TYPE_4__* drm_connector_enum_list ;
 int drm_connector_free ;
 int drm_connector_get_cmdline_mode (struct drm_connector*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 scalar_t__ drm_drv_uses_atomic_modeset (struct drm_device*) ;
 int drm_mode_object_unregister (struct drm_device*,TYPE_2__*) ;
 int drm_object_attach_property (TYPE_2__*,int ,int ) ;
 void* ida_simple_get (struct ida*,int,int,int ) ;
 int ida_simple_remove (struct ida*,int) ;
 int kasprintf (int ,char*,int ,int) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int drm_connector_init(struct drm_device *dev,
         struct drm_connector *connector,
         const struct drm_connector_funcs *funcs,
         int connector_type)
{
 struct drm_mode_config *config = &dev->mode_config;
 int ret;
 struct ida *connector_ida =
  &drm_connector_enum_list[connector_type].ida;

 WARN_ON(drm_drv_uses_atomic_modeset(dev) &&
  (!funcs->atomic_destroy_state ||
   !funcs->atomic_duplicate_state));

 ret = __drm_mode_object_add(dev, &connector->base,
        DRM_MODE_OBJECT_CONNECTOR,
        0, drm_connector_free);
 if (ret)
  return ret;

 connector->base.properties = &connector->properties;
 connector->dev = dev;
 connector->funcs = funcs;


 ret = ida_simple_get(&config->connector_ida, 0, 32, GFP_KERNEL);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed to allocate %s connector index: %d\n",
         drm_connector_enum_list[connector_type].name,
         ret);
  goto out_put;
 }
 connector->index = ret;
 ret = 0;

 connector->connector_type = connector_type;
 connector->connector_type_id =
  ida_simple_get(connector_ida, 1, 0, GFP_KERNEL);
 if (connector->connector_type_id < 0) {
  ret = connector->connector_type_id;
  goto out_put_id;
 }
 connector->name =
  kasprintf(GFP_KERNEL, "%s-%d",
     drm_connector_enum_list[connector_type].name,
     connector->connector_type_id);
 if (!connector->name) {
  ret = -ENOMEM;
  goto out_put_type_id;
 }

 INIT_LIST_HEAD(&connector->probed_modes);
 INIT_LIST_HEAD(&connector->modes);
 mutex_init(&connector->mutex);
 connector->edid_blob_ptr = ((void*)0);
 connector->tile_blob_ptr = ((void*)0);
 connector->status = connector_status_unknown;
 connector->display_info.panel_orientation =
  DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

 drm_connector_get_cmdline_mode(connector);



 spin_lock_irq(&config->connector_list_lock);
 list_add_tail(&connector->head, &config->connector_list);
 config->num_connector++;
 spin_unlock_irq(&config->connector_list_lock);

 if (connector_type != DRM_MODE_CONNECTOR_VIRTUAL &&
     connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
  drm_connector_attach_edid_property(connector);

 drm_object_attach_property(&connector->base,
          config->dpms_property, 0);

 drm_object_attach_property(&connector->base,
       config->link_status_property,
       0);

 drm_object_attach_property(&connector->base,
       config->non_desktop_property,
       0);
 drm_object_attach_property(&connector->base,
       config->tile_property,
       0);

 if (drm_core_check_feature(dev, DRIVER_ATOMIC)) {
  drm_object_attach_property(&connector->base, config->prop_crtc_id, 0);
 }

 connector->debugfs_entry = ((void*)0);
out_put_type_id:
 if (ret)
  ida_simple_remove(connector_ida, connector->connector_type_id);
out_put_id:
 if (ret)
  ida_simple_remove(&config->connector_ida, connector->index);
out_put:
 if (ret)
  drm_mode_object_unregister(dev, &connector->base);

 return ret;
}
