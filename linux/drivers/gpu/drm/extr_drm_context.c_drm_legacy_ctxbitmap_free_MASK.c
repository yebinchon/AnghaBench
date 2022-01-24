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
struct drm_device {int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  ctx_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_KMS_LEGACY_CONTEXT ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device * dev, int ctx_handle)
{
	if (!FUNC0(dev, DRIVER_KMS_LEGACY_CONTEXT) &&
	    !FUNC0(dev, DRIVER_LEGACY))
		return;

	FUNC2(&dev->struct_mutex);
	FUNC1(&dev->ctx_idr, ctx_handle);
	FUNC3(&dev->struct_mutex);
}