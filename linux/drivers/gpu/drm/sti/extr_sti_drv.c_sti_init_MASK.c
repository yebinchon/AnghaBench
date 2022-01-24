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
struct sti_private {struct drm_device* drm_dev; } ;
struct drm_device {int /*<<< orphan*/  dev; void* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 struct sti_private* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *ddev)
{
	struct sti_private *private;

	private = FUNC3(sizeof(*private), GFP_KERNEL);
	if (!private)
		return -ENOMEM;

	ddev->dev_private = (void *)private;
	FUNC0(ddev->dev, ddev);
	private->drm_dev = ddev;

	FUNC2(ddev);

	FUNC4(ddev);

	FUNC1(ddev);

	return 0;
}