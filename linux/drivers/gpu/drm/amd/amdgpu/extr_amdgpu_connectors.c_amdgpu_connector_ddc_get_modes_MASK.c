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
struct amdgpu_connector {int /*<<< orphan*/ * edid; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct amdgpu_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector)
{
	struct amdgpu_connector *amdgpu_connector = FUNC2(connector);
	int ret;

	if (amdgpu_connector->edid) {
		FUNC1(connector, amdgpu_connector->edid);
		ret = FUNC0(connector, amdgpu_connector->edid);
		return ret;
	}
	FUNC1(connector, NULL);
	return 0;
}