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
struct xenkbd_info {scalar_t__ page; scalar_t__ mtouch; scalar_t__ ptr; scalar_t__ kbd; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct xenkbd_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xenkbd_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct xenkbd_info*) ; 

__attribute__((used)) static int FUNC5(struct xenbus_device *dev)
{
	struct xenkbd_info *info = FUNC0(&dev->dev);

	FUNC4(info);
	if (info->kbd)
		FUNC2(info->kbd);
	if (info->ptr)
		FUNC2(info->ptr);
	if (info->mtouch)
		FUNC2(info->mtouch);
	FUNC1((unsigned long)info->page);
	FUNC3(info);
	return 0;
}