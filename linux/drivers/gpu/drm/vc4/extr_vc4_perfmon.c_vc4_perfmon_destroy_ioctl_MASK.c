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
struct vc4_perfmon {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;
struct vc4_dev {int /*<<< orphan*/  v3d; } ;
struct drm_vc4_perfmon_destroy {int /*<<< orphan*/  id; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 struct vc4_perfmon* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_perfmon*) ; 

int FUNC6(struct drm_device *dev, void *data,
			      struct drm_file *file_priv)
{
	struct vc4_dev *vc4 = FUNC4(dev);
	struct vc4_file *vc4file = file_priv->driver_priv;
	struct drm_vc4_perfmon_destroy *req = data;
	struct vc4_perfmon *perfmon;

	if (!vc4->v3d) {
		FUNC0("Destroying perfmon no VC4 V3D probed\n");
		return -ENODEV;
	}

	FUNC2(&vc4file->perfmon.lock);
	perfmon = FUNC1(&vc4file->perfmon.idr, req->id);
	FUNC3(&vc4file->perfmon.lock);

	if (!perfmon)
		return -EINVAL;

	FUNC5(perfmon);
	return 0;
}