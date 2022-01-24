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
struct atp {TYPE_1__* intf; int /*<<< orphan*/ * info; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct atp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  fountain_info ; 

__attribute__((used)) static int FUNC2(struct atp *dev)
{
	if (dev->info != &fountain_info) {
		/* switch to raw sensor mode */
		if (FUNC0(dev))
			return -EIO;

		FUNC1(&dev->intf->dev, "Geyser mode initialized.\n");
	}

	return 0;
}