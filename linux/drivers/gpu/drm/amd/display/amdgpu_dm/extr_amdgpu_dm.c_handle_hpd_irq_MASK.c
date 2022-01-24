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
struct drm_device {int dummy; } ;
struct drm_connector {scalar_t__ force; struct drm_device* dev; } ;
struct amdgpu_dm_connector {int fake_enable; int /*<<< orphan*/  hpd_lock; struct drm_connector base; int /*<<< orphan*/  dc_link; } ;
typedef  enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;

/* Variables and functions */
 int /*<<< orphan*/  DETECT_REASON_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DRM_FORCE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_dm_connector*) ; 
 int dc_connection_none ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(void *param)
{
	struct amdgpu_dm_connector *aconnector = (struct amdgpu_dm_connector *)param;
	struct drm_connector *connector = &aconnector->base;
	struct drm_device *dev = connector->dev;
	enum dc_connection_type new_connection_type = dc_connection_none;

	/*
	 * In case of failure or MST no need to update connector status or notify the OS
	 * since (for MST case) MST does this in its own context.
	 */
	FUNC9(&aconnector->hpd_lock);

	if (aconnector->fake_enable)
		aconnector->fake_enable = false;

	if (!FUNC3(aconnector->dc_link, &new_connection_type))
		FUNC0("KMS: Failed to detect connector\n");

	if (aconnector->base.force && new_connection_type == dc_connection_none) {
		FUNC8(aconnector->dc_link);


		FUNC6(dev);
		FUNC4(dev, connector);
		FUNC7(dev);

		if (aconnector->base.force == DRM_FORCE_UNSPECIFIED)
			FUNC5(dev);

	} else if (FUNC2(aconnector->dc_link, DETECT_REASON_HPD)) {
		FUNC1(aconnector);


		FUNC6(dev);
		FUNC4(dev, connector);
		FUNC7(dev);

		if (aconnector->base.force == DRM_FORCE_UNSPECIFIED)
			FUNC5(dev);
	}
	FUNC10(&aconnector->hpd_lock);

}