#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gb_control {TYPE_2__* connection; } ;
struct TYPE_4__ {TYPE_1__* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_2__*) ; 

int FUNC2(struct gb_control *control)
{
	int ret;

	ret = FUNC1(control->connection);
	if (ret) {
		FUNC0(&control->connection->intf->dev,
			"failed to enable control connection: %d\n", ret);
		return ret;
	}

	return 0;
}