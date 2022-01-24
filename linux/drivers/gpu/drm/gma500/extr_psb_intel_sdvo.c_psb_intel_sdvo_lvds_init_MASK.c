#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {int /*<<< orphan*/  connector_type; } ;
struct gma_connector {struct drm_connector base; } ;
struct psb_intel_sdvo_connector {int /*<<< orphan*/  output_flag; struct gma_connector base; } ;
struct drm_encoder {int /*<<< orphan*/  encoder_type; } ;
struct TYPE_2__ {int clone_mask; struct drm_encoder base; } ;
struct psb_intel_sdvo {TYPE_1__ base; int /*<<< orphan*/  controlled_output; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_LVDS ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_LVDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INTEL_ANALOG_CLONE_BIT ; 
 int INTEL_SDVO_LVDS_CLONE_BIT ; 
 int /*<<< orphan*/  SDVO_OUTPUT_LVDS0 ; 
 int /*<<< orphan*/  SDVO_OUTPUT_LVDS1 ; 
 struct psb_intel_sdvo_connector* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psb_intel_sdvo_connector*,struct psb_intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_sdvo*,struct psb_intel_sdvo_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static bool
FUNC4(struct psb_intel_sdvo *psb_intel_sdvo, int device)
{
	struct drm_encoder *encoder = &psb_intel_sdvo->base.base;
	struct drm_connector *connector;
	struct gma_connector *intel_connector;
	struct psb_intel_sdvo_connector *psb_intel_sdvo_connector;

	psb_intel_sdvo_connector = FUNC0(sizeof(struct psb_intel_sdvo_connector), GFP_KERNEL);
	if (!psb_intel_sdvo_connector)
		return false;

	intel_connector = &psb_intel_sdvo_connector->base;
	connector = &intel_connector->base;
	encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;

	if (device == 0) {
		psb_intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS0;
		psb_intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS0;
	} else if (device == 1) {
		psb_intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS1;
		psb_intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS1;
	}

	psb_intel_sdvo->base.clone_mask = ((1 << INTEL_ANALOG_CLONE_BIT) |
				       (1 << INTEL_SDVO_LVDS_CLONE_BIT));

	FUNC1(psb_intel_sdvo_connector, psb_intel_sdvo);
	if (!FUNC2(psb_intel_sdvo, psb_intel_sdvo_connector))
		goto err;

	return true;

err:
	FUNC3(connector);
	return false;
}