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
typedef  int /*<<< orphan*/  u32 ;
struct led_classdev {TYPE_1__* dev; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {struct fwnode_handle* fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct fwnode_handle*,char*) ; 
 scalar_t__ FUNC1 (struct fwnode_handle*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u32 *FUNC4(struct led_classdev *led_cdev, unsigned int *size)
{
	struct fwnode_handle *fwnode = led_cdev->dev->fwnode;
	u32 *pattern;
	int count;

	count = FUNC0(fwnode, "led-pattern");
	if (count < 0)
		return NULL;

	pattern = FUNC2(count, sizeof(*pattern), GFP_KERNEL);
	if (!pattern)
		return NULL;

	if (FUNC1(fwnode, "led-pattern", pattern, count)) {
		FUNC3(pattern);
		return NULL;
	}

	*size = count;

	return pattern;
}