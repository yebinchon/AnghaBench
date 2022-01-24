#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct cdv_intel_dp {int has_audio; scalar_t__ force_audio; int /*<<< orphan*/  adapter; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int FUNC0 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct gma_encoder*) ; 
 int connector_status_connected ; 
 int FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct gma_encoder* FUNC5 (struct drm_connector*) ; 
 int FUNC6 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC8(struct drm_connector *connector, bool force)
{
	struct gma_encoder *encoder = FUNC5(connector);
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	enum drm_connector_status status;
	struct edid *edid = NULL;
	int edp = FUNC6(encoder);

	intel_dp->has_audio = false;

	if (edp)
		FUNC2(encoder);
	status = FUNC0(encoder);
	if (status != connector_status_connected) {
		if (edp)
			FUNC1(encoder);
		return status;
        }

	if (intel_dp->force_audio) {
		intel_dp->has_audio = intel_dp->force_audio > 0;
	} else {
		edid = FUNC4(connector, &intel_dp->adapter);
		if (edid) {
			intel_dp->has_audio = FUNC3(edid);
			FUNC7(edid);
		}
	}
	if (edp)
		FUNC1(encoder);

	return connector_status_connected;
}