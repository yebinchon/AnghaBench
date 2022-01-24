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
struct cdv_intel_dp {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct gma_encoder*) ; 
 int FUNC2 (struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct gma_encoder* FUNC4 (struct drm_connector*) ; 
 int FUNC5 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 

__attribute__((used)) static bool
FUNC7(struct drm_connector *connector)
{
	struct gma_encoder *encoder = FUNC4(connector);
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	struct edid *edid;
	bool has_audio = false;
	int edp = FUNC5(encoder);

	if (edp)
		FUNC1(encoder);

	edid = FUNC3(connector, &intel_dp->adapter);
	if (edid) {
		has_audio = FUNC2(edid);
		FUNC6(edid);
	}
	if (edp)
		FUNC0(encoder);

	return has_audio;
}