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
typedef  int /*<<< orphan*/  u64 ;
struct vc4_perfmon {int ncounters; int /*<<< orphan*/  counters; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;
struct vc4_dev {int /*<<< orphan*/  v3d; } ;
struct drm_vc4_perfmon_get_values {int /*<<< orphan*/  values_ptr; int /*<<< orphan*/  id; } ;
struct drm_file {struct vc4_file* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct vc4_perfmon* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vc4_perfmon*) ; 
 int /*<<< orphan*/  FUNC8 (struct vc4_perfmon*) ; 

int FUNC9(struct drm_device *dev, void *data,
				 struct drm_file *file_priv)
{
	struct vc4_dev *vc4 = FUNC5(dev);
	struct vc4_file *vc4file = file_priv->driver_priv;
	struct drm_vc4_perfmon_get_values *req = data;
	struct vc4_perfmon *perfmon;
	int ret;

	if (!vc4->v3d) {
		FUNC0("Getting perfmon no VC4 V3D probed\n");
		return -ENODEV;
	}

	FUNC3(&vc4file->perfmon.lock);
	perfmon = FUNC2(&vc4file->perfmon.idr, req->id);
	FUNC7(perfmon);
	FUNC4(&vc4file->perfmon.lock);

	if (!perfmon)
		return -EINVAL;

	if (FUNC1(FUNC6(req->values_ptr), perfmon->counters,
			 perfmon->ncounters * sizeof(u64)))
		ret = -EFAULT;
	else
		ret = 0;

	FUNC8(perfmon);
	return ret;
}