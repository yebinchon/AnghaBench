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
struct tegra_dc {TYPE_1__* soc; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct drm_plane*) ;} ;
struct TYPE_3__ {scalar_t__ supports_cursor; } ;

/* Variables and functions */
 struct drm_plane* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_plane*) ; 
 int FUNC2 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_plane*) ; 
 struct drm_plane* FUNC5 (struct drm_device*,struct tegra_dc*,int,int) ; 
 TYPE_2__ tegra_plane_funcs ; 
 struct drm_plane* FUNC6 (struct drm_device*,struct tegra_dc*) ; 

__attribute__((used)) static struct drm_plane *FUNC7(struct drm_device *drm,
					     struct tegra_dc *dc)
{
	struct drm_plane *planes[2], *primary;
	unsigned int planes_num;
	unsigned int i;
	int err;

	primary = FUNC6(drm, dc);
	if (FUNC1(primary))
		return primary;

	if (dc->soc->supports_cursor)
		planes_num = 2;
	else
		planes_num = 1;

	for (i = 0; i < planes_num; i++) {
		planes[i] = FUNC5(drm, dc, 1 + i,
							  false);
		if (FUNC1(planes[i])) {
			err = FUNC2(planes[i]);

			while (i--)
				tegra_plane_funcs.destroy(planes[i]);

			tegra_plane_funcs.destroy(primary);
			return FUNC0(err);
		}
	}

	return primary;
}