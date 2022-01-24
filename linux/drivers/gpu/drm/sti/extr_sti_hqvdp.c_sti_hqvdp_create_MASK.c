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
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int desc; struct drm_plane drm_plane; int /*<<< orphan*/  status; } ;
struct sti_hqvdp {TYPE_1__ plane; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DRM_PLANE_TYPE_OVERLAY ; 
 int /*<<< orphan*/  STI_PLANE_DISABLED ; 
 struct sti_hqvdp* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hqvdp_supported_formats ; 
 int /*<<< orphan*/  sti_hqvdp_helpers_funcs ; 
 int /*<<< orphan*/  FUNC5 (struct sti_hqvdp*) ; 
 int /*<<< orphan*/  sti_hqvdp_plane_helpers_funcs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane *FUNC7(struct drm_device *drm_dev,
					  struct device *dev, int desc)
{
	struct sti_hqvdp *hqvdp = FUNC2(dev);
	int res;

	hqvdp->plane.desc = desc;
	hqvdp->plane.status = STI_PLANE_DISABLED;

	FUNC5(hqvdp);

	res = FUNC4(drm_dev, &hqvdp->plane.drm_plane, 1,
				       &sti_hqvdp_plane_helpers_funcs,
				       hqvdp_supported_formats,
				       FUNC0(hqvdp_supported_formats),
				       NULL, DRM_PLANE_TYPE_OVERLAY, NULL);
	if (res) {
		FUNC1("Failed to initialize universal plane\n");
		return NULL;
	}

	FUNC3(&hqvdp->plane.drm_plane, &sti_hqvdp_helpers_funcs);

	FUNC6(&hqvdp->plane, DRM_PLANE_TYPE_OVERLAY);

	return &hqvdp->plane.drm_plane;
}