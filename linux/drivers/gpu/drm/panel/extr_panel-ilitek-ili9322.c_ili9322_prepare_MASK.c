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
struct ili9322 {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_panel*,struct ili9322*) ; 
 int FUNC1 (struct ili9322*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_panel*) ; 
 struct ili9322* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct ili9322 *ili = FUNC3(panel);
	int ret;

	ret = FUNC1(ili);
	if (ret < 0)
		return ret;

	ret = FUNC0(panel, ili);
	if (ret < 0)
		FUNC2(panel);

	return ret;
}