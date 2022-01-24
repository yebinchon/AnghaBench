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
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int /*<<< orphan*/  port; int /*<<< orphan*/  base; struct amdgpu_encoder* edid; struct amdgpu_encoder* mst_encoder; } ;
struct amdgpu_dm_connector {int /*<<< orphan*/  port; int /*<<< orphan*/  base; struct amdgpu_dm_connector* edid; struct amdgpu_dm_connector* mst_encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_encoder*) ; 
 struct amdgpu_encoder* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC5(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *amdgpu_dm_connector = FUNC4(connector);
	struct amdgpu_encoder *amdgpu_encoder = amdgpu_dm_connector->mst_encoder;

	if (amdgpu_dm_connector->edid) {
		FUNC3(amdgpu_dm_connector->edid);
		amdgpu_dm_connector->edid = NULL;
	}

	FUNC2(&amdgpu_encoder->base);
	FUNC3(amdgpu_encoder);
	FUNC0(connector);
	FUNC1(amdgpu_dm_connector->port);
	FUNC3(amdgpu_dm_connector);
}