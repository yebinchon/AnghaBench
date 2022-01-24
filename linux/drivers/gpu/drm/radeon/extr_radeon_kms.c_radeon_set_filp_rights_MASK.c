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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct radeon_device {TYPE_1__ gem; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev,
				   struct drm_file **owner,
				   struct drm_file *applier,
				   uint32_t *value)
{
	struct radeon_device *rdev = dev->dev_private;

	FUNC0(&rdev->gem.mutex);
	if (*value == 1) {
		/* wants rights */
		if (!*owner)
			*owner = applier;
	} else if (*value == 0) {
		/* revokes rights */
		if (*owner == applier)
			*owner = NULL;
	}
	*value = *owner == applier ? 1 : 0;
	FUNC1(&rdev->gem.mutex);
}