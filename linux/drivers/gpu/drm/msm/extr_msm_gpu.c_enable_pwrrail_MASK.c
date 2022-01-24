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
struct msm_gpu {scalar_t__ gpu_cx; scalar_t__ gpu_reg; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct msm_gpu *gpu)
{
	struct drm_device *dev = gpu->dev;
	int ret = 0;

	if (gpu->gpu_reg) {
		ret = FUNC1(gpu->gpu_reg);
		if (ret) {
			FUNC0(dev->dev, "failed to enable 'gpu_reg': %d\n", ret);
			return ret;
		}
	}

	if (gpu->gpu_cx) {
		ret = FUNC1(gpu->gpu_cx);
		if (ret) {
			FUNC0(dev->dev, "failed to enable 'gpu_cx': %d\n", ret);
			return ret;
		}
	}

	return 0;
}