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
struct mtk_drm_private {int /*<<< orphan*/ * drm; scalar_t__ num_pipes; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct mtk_drm_private* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct mtk_drm_private *private = FUNC0(dev);

	FUNC2(private->drm);
	FUNC3(private->drm);
	FUNC1(private->drm);
	private->num_pipes = 0;
	private->drm = NULL;
}