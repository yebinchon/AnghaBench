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
struct host1x_device {int /*<<< orphan*/  dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct drm_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

__attribute__((used)) static int FUNC3(struct host1x_device *dev)
{
	struct drm_device *drm = FUNC0(&dev->dev);

	FUNC2(drm);
	FUNC1(drm);

	return 0;
}