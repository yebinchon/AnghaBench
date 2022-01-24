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
 int /*<<< orphan*/  DRM_RESERVED_CONTEXTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device * dev)
{
	int ret;

	FUNC1(&dev->struct_mutex);
	ret = FUNC0(&dev->ctx_idr, NULL, DRM_RESERVED_CONTEXTS, 0,
			GFP_KERNEL);
	FUNC2(&dev->struct_mutex);
	return ret;
}