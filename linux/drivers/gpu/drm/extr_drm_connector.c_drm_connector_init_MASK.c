#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ida {int dummy; } ;
struct drm_mode_config {struct ida connector_ida; int /*<<< orphan*/  prop_crtc_id; int /*<<< orphan*/  tile_property; int /*<<< orphan*/  non_desktop_property; int /*<<< orphan*/  link_status_property; int /*<<< orphan*/  dpms_property; int /*<<< orphan*/  connector_list_lock; int /*<<< orphan*/  num_connector; int /*<<< orphan*/  connector_list; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector_funcs {int /*<<< orphan*/  atomic_duplicate_state; int /*<<< orphan*/  atomic_destroy_state; } ;
struct TYPE_7__ {int /*<<< orphan*/ * properties; } ;
struct TYPE_6__ {int /*<<< orphan*/  panel_orientation; } ;
struct drm_connector {int index; int connector_type; int connector_type_id; TYPE_2__ base; int /*<<< orphan*/ * debugfs_entry; int /*<<< orphan*/  head; TYPE_1__ display_info; int /*<<< orphan*/  status; int /*<<< orphan*/ * tile_blob_ptr; int /*<<< orphan*/ * edid_blob_ptr; int /*<<< orphan*/  mutex; int /*<<< orphan*/  modes; int /*<<< orphan*/  probed_modes; int /*<<< orphan*/  name; struct drm_connector_funcs const* funcs; struct drm_device* dev; int /*<<< orphan*/  properties; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; struct ida ida; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int DRM_MODE_CONNECTOR_VIRTUAL ; 
 int DRM_MODE_CONNECTOR_WRITEBACK ; 
 int /*<<< orphan*/  DRM_MODE_OBJECT_CONNECTOR ; 
 int /*<<< orphan*/  DRM_MODE_PANEL_ORIENTATION_UNKNOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct drm_device*,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  connector_status_unknown ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 TYPE_4__* drm_connector_enum_list ; 
 int /*<<< orphan*/  drm_connector_free ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 scalar_t__ FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct ida*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ida*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct drm_device *dev,
		       struct drm_connector *connector,
		       const struct drm_connector_funcs *funcs,
		       int connector_type)
{
	struct drm_mode_config *config = &dev->mode_config;
	int ret;
	struct ida *connector_ida =
		&drm_connector_enum_list[connector_type].ida;

	FUNC2(FUNC7(dev) &&
		(!funcs->atomic_destroy_state ||
		 !funcs->atomic_duplicate_state));

	ret = FUNC3(dev, &connector->base,
				    DRM_MODE_OBJECT_CONNECTOR,
				    false, drm_connector_free);
	if (ret)
		return ret;

	connector->base.properties = &connector->properties;
	connector->dev = dev;
	connector->funcs = funcs;

	/* connector index is used with 32bit bitmasks */
	ret = FUNC10(&config->connector_ida, 0, 32, GFP_KERNEL);
	if (ret < 0) {
		FUNC0("Failed to allocate %s connector index: %d\n",
			      drm_connector_enum_list[connector_type].name,
			      ret);
		goto out_put;
	}
	connector->index = ret;
	ret = 0;

	connector->connector_type = connector_type;
	connector->connector_type_id =
		FUNC10(connector_ida, 1, 0, GFP_KERNEL);
	if (connector->connector_type_id < 0) {
		ret = connector->connector_type_id;
		goto out_put_id;
	}
	connector->name =
		FUNC12(GFP_KERNEL, "%s-%d",
			  drm_connector_enum_list[connector_type].name,
			  connector->connector_type_id);
	if (!connector->name) {
		ret = -ENOMEM;
		goto out_put_type_id;
	}

	FUNC1(&connector->probed_modes);
	FUNC1(&connector->modes);
	FUNC14(&connector->mutex);
	connector->edid_blob_ptr = NULL;
	connector->tile_blob_ptr = NULL;
	connector->status = connector_status_unknown;
	connector->display_info.panel_orientation =
		DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

	FUNC5(connector);

	/* We should add connectors at the end to avoid upsetting the connector
	 * index too much. */
	FUNC15(&config->connector_list_lock);
	FUNC13(&connector->head, &config->connector_list);
	config->num_connector++;
	FUNC16(&config->connector_list_lock);

	if (connector_type != DRM_MODE_CONNECTOR_VIRTUAL &&
	    connector_type != DRM_MODE_CONNECTOR_WRITEBACK)
		FUNC4(connector);

	FUNC9(&connector->base,
				      config->dpms_property, 0);

	FUNC9(&connector->base,
				   config->link_status_property,
				   0);

	FUNC9(&connector->base,
				   config->non_desktop_property,
				   0);
	FUNC9(&connector->base,
				   config->tile_property,
				   0);

	if (FUNC6(dev, DRIVER_ATOMIC)) {
		FUNC9(&connector->base, config->prop_crtc_id, 0);
	}

	connector->debugfs_entry = NULL;
out_put_type_id:
	if (ret)
		FUNC11(connector_ida, connector->connector_type_id);
out_put_id:
	if (ret)
		FUNC11(&config->connector_ida, connector->index);
out_put:
	if (ret)
		FUNC8(dev, &connector->base);

	return ret;
}