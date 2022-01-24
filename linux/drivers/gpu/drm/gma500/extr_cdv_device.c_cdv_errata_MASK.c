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
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_device *dev)
{
	/* Disable bonus launch.
	 *	CPU and GPU competes for memory and display misses updates and
	 *	flickers. Worst with dual core, dual displays.
	 *
	 *	Fixes were done to Win 7 gfx driver to disable a feature called
	 *	Bonus Launch to work around the issue, by degrading
	 *	performance.
	 */
	 FUNC0(FUNC1(dev->pdev->bus), 3, 0x30, 0x08027108);
}