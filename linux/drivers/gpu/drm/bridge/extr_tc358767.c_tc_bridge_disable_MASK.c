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
struct tc_data {int /*<<< orphan*/  dev; int /*<<< orphan*/  panel; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct tc_data* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tc_data*) ; 
 int FUNC4 (struct tc_data*) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct tc_data *tc = FUNC0(bridge);
	int ret;

	FUNC2(tc->panel);

	ret = FUNC4(tc);
	if (ret < 0)
		FUNC1(tc->dev, "main link stream stop error: %d\n", ret);

	ret = FUNC3(tc);
	if (ret < 0)
		FUNC1(tc->dev, "main link disable error: %d\n", ret);
}