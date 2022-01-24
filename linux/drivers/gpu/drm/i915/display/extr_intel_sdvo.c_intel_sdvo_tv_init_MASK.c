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
struct intel_connector {struct drm_connector base; } ;
struct intel_sdvo_connector {int output_flag; struct intel_connector base; } ;
struct drm_encoder {int /*<<< orphan*/  encoder_type; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_sdvo {int controlled_output; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_SVIDEO ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TVDAC ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 struct intel_sdvo_connector* FUNC2 () ; 
 scalar_t__ FUNC3 (struct intel_sdvo_connector*,struct intel_sdvo*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sdvo*,struct intel_sdvo_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_sdvo*,struct intel_sdvo_connector*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo_connector*) ; 

__attribute__((used)) static bool
FUNC7(struct intel_sdvo *intel_sdvo, int type)
{
	struct drm_encoder *encoder = &intel_sdvo->base.base;
	struct drm_connector *connector;
	struct intel_connector *intel_connector;
	struct intel_sdvo_connector *intel_sdvo_connector;

	FUNC0("initialising TV type %d\n", type);

	intel_sdvo_connector = FUNC2();
	if (!intel_sdvo_connector)
		return false;

	intel_connector = &intel_sdvo_connector->base;
	connector = &intel_connector->base;
	encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
	connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;

	intel_sdvo->controlled_output |= type;
	intel_sdvo_connector->output_flag = type;

	if (FUNC3(intel_sdvo_connector, intel_sdvo) < 0) {
		FUNC6(intel_sdvo_connector);
		return false;
	}

	if (!FUNC5(intel_sdvo, intel_sdvo_connector, type))
		goto err;

	if (!FUNC4(intel_sdvo, intel_sdvo_connector))
		goto err;

	return true;

err:
	FUNC1(connector);
	return false;
}