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
struct mddev {int /*<<< orphan*/  writes_pending; scalar_t__ ro; scalar_t__ in_sync; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mddev *mddev, struct bio *bi)
{
	if (FUNC1(bi) != WRITE)
		return;
	FUNC0(mddev->in_sync || mddev->ro);
	FUNC2(&mddev->writes_pending);
}