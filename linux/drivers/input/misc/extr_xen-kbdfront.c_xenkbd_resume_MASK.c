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
struct xenkbd_info {int /*<<< orphan*/  page; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct xenkbd_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xenbus_device*,struct xenkbd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenkbd_info*) ; 

__attribute__((used)) static int FUNC4(struct xenbus_device *dev)
{
	struct xenkbd_info *info = FUNC0(&dev->dev);

	FUNC3(info);
	FUNC1(info->page, 0, PAGE_SIZE);
	return FUNC2(dev, info);
}