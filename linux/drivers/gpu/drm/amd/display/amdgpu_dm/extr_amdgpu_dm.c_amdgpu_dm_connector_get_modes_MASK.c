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
struct edid {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_dm_connector {int num_modes; struct edid* edid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 struct drm_encoder* FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int FUNC4 (struct drm_connector*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct amdgpu_dm_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *amdgpu_dm_connector =
			FUNC6(connector);
	struct drm_encoder *encoder;
	struct edid *edid = amdgpu_dm_connector->edid;

	encoder = FUNC2(connector);

	if (!edid || !FUNC5(edid)) {
		amdgpu_dm_connector->num_modes =
				FUNC4(connector, 640, 480);
	} else {
		FUNC1(connector, edid);
		FUNC0(encoder, connector);
	}
	FUNC3(connector);

	return amdgpu_dm_connector->num_modes;
}