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
struct sti_private {int dummy; } ;
struct drm_device {struct sti_private* dev_private; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sti_private*) ; 

__attribute__((used)) static void FUNC5(struct drm_device *ddev)
{
	struct sti_private *private = ddev->dev_private;

	FUNC2(ddev);
	FUNC1(ddev);
	FUNC3(ddev);
	FUNC0(ddev->dev, ddev);
	FUNC4(private);
	ddev->dev_private = NULL;
}