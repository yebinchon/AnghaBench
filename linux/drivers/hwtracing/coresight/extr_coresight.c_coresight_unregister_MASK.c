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
struct coresight_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct coresight_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct coresight_device*) ; 

void FUNC4(struct coresight_device *csdev)
{
	FUNC3(csdev);
	/* Remove references of that device in the topology */
	FUNC1(csdev);
	FUNC0(csdev->pdata);
	FUNC2(&csdev->dev);
}