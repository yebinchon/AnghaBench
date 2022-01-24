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
struct mddev {int major_version; int minor_version; char* metadata_type; scalar_t__ external; scalar_t__ persistent; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static ssize_t
FUNC1(struct mddev *mddev, char *page)
{
	if (mddev->persistent)
		return FUNC0(page, "%d.%d\n",
			       mddev->major_version, mddev->minor_version);
	else if (mddev->external)
		return FUNC0(page, "external:%s\n", mddev->metadata_type);
	else
		return FUNC0(page, "none\n");
}