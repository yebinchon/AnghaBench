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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct drm_device *drm = FUNC1(dev);

	FUNC3(drm);
	FUNC2(drm);
	FUNC0(drm->dev, drm);
}