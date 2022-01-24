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
struct drm_device {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev)
{
	int ret;

	if (FUNC2(dev->pdev))
		return -EIO;

	ret = FUNC0(dev);
	if (ret)
		return ret;

	FUNC1(dev);
	return 0;
}