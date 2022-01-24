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
struct coresight_device {int enable; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable ) (struct coresight_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct coresight_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct coresight_device *csdev)
{
	if (FUNC0(csdev->refcnt) == 0) {
		if (FUNC1(csdev)->disable)
			FUNC1(csdev)->disable(csdev, NULL);
		csdev->enable = false;
	}
	return !csdev->enable;
}