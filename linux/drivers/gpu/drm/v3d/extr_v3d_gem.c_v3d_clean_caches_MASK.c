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
struct v3d_dev {int /*<<< orphan*/  cache_clean_lock; struct drm_device drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  V3D_CTL_L2TCACTL ; 
 int /*<<< orphan*/  V3D_L2TCACTL_FLM ; 
 int /*<<< orphan*/  V3D_L2TCACTL_FLM_CLEAN ; 
 int V3D_L2TCACTL_L2TFLS ; 
 int V3D_L2TCACTL_TMUWCF ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (int,int) ; 

void
FUNC9(struct v3d_dev *v3d)
{
	struct drm_device *dev = &v3d->drm;
	int core = 0;

	FUNC6(dev);

	FUNC2(core, V3D_CTL_L2TCACTL, V3D_L2TCACTL_TMUWCF);
	if (FUNC8(!(FUNC1(core, V3D_CTL_L2TCACTL) &
		       V3D_L2TCACTL_L2TFLS), 100)) {
		FUNC0("Timeout waiting for L1T write combiner flush\n");
	}

	FUNC4(&v3d->cache_clean_lock);
	FUNC2(core, V3D_CTL_L2TCACTL,
		       V3D_L2TCACTL_L2TFLS |
		       FUNC3(V3D_L2TCACTL_FLM_CLEAN, V3D_L2TCACTL_FLM));

	if (FUNC8(!(FUNC1(core, V3D_CTL_L2TCACTL) &
		       V3D_L2TCACTL_L2TFLS), 100)) {
		FUNC0("Timeout waiting for L2T clean\n");
	}

	FUNC5(&v3d->cache_clean_lock);

	FUNC7(dev);
}