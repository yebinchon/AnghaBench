#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int id; } ;
struct drm_connector {char* name; TYPE_2__ base; scalar_t__ interlace_allowed; } ;
struct drm_writeback_connector {int /*<<< orphan*/  encoder; struct drm_property_blob* pixel_formats_blob_ptr; int /*<<< orphan*/  timeline_name; int /*<<< orphan*/  fence_lock; int /*<<< orphan*/  fence_context; int /*<<< orphan*/  job_lock; int /*<<< orphan*/  job_queue; struct drm_connector base; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_property_blob {TYPE_1__ base; } ;
struct drm_mode_config {int /*<<< orphan*/  writeback_pixel_formats_property; int /*<<< orphan*/  writeback_fb_id_property; int /*<<< orphan*/  writeback_out_fence_ptr_property; } ;
struct drm_encoder_helper_funcs {int dummy; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct drm_connector_funcs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_WRITEBACK ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct drm_property_blob*) ; 
 int FUNC2 (struct drm_property_blob*) ; 
 int FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 int FUNC7 (struct drm_device*,struct drm_connector*,struct drm_connector_funcs const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct drm_encoder_helper_funcs const*) ; 
 int FUNC10 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_property_blob*) ; 
 struct drm_property_blob* FUNC13 (struct drm_device*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  drm_writeback_encoder_funcs ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct drm_device *dev,
				 struct drm_writeback_connector *wb_connector,
				 const struct drm_connector_funcs *con_funcs,
				 const struct drm_encoder_helper_funcs *enc_helper_funcs,
				 const u32 *formats, int n_formats)
{
	struct drm_property_blob *blob;
	struct drm_connector *connector = &wb_connector->base;
	struct drm_mode_config *config = &dev->mode_config;
	int ret = FUNC3(dev);

	if (ret != 0)
		return ret;

	blob = FUNC13(dev, n_formats * sizeof(*formats),
					formats);
	if (FUNC1(blob))
		return FUNC2(blob);

	FUNC9(&wb_connector->encoder, enc_helper_funcs);
	ret = FUNC10(dev, &wb_connector->encoder,
			       &drm_writeback_encoder_funcs,
			       DRM_MODE_ENCODER_VIRTUAL, NULL);
	if (ret)
		goto fail;

	connector->interlace_allowed = 0;

	ret = FUNC7(dev, connector, con_funcs,
				 DRM_MODE_CONNECTOR_WRITEBACK);
	if (ret)
		goto connector_fail;

	ret = FUNC5(connector,
						&wb_connector->encoder);
	if (ret)
		goto attach_fail;

	FUNC0(&wb_connector->job_queue);
	FUNC15(&wb_connector->job_lock);

	wb_connector->fence_context = FUNC4(1);
	FUNC15(&wb_connector->fence_lock);
	FUNC14(wb_connector->timeline_name,
		 sizeof(wb_connector->timeline_name),
		 "CONNECTOR:%d-%s", connector->base.id, connector->name);

	FUNC11(&connector->base,
				   config->writeback_out_fence_ptr_property, 0);

	FUNC11(&connector->base,
				   config->writeback_fb_id_property, 0);

	FUNC11(&connector->base,
				   config->writeback_pixel_formats_property,
				   blob->base.id);
	wb_connector->pixel_formats_blob_ptr = blob;

	return 0;

attach_fail:
	FUNC6(connector);
connector_fail:
	FUNC8(&wb_connector->encoder);
fail:
	FUNC12(blob);
	return ret;
}