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
struct thc63_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  vcc; int /*<<< orphan*/  pdwn; int /*<<< orphan*/  oe; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct thc63_dev* FUNC3 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct thc63_dev *thc63 = FUNC3(bridge);
	int ret;

	FUNC1(thc63->oe, 0);
	FUNC1(thc63->pdwn, 1);

	ret = FUNC2(thc63->vcc);
	if (ret)
		FUNC0(thc63->dev,
			"Failed to disable regulator \"vcc\": %d\n", ret);
}