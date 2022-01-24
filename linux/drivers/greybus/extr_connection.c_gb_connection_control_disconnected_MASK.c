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
typedef  int /*<<< orphan*/  u16 ;
struct gb_control {int dummy; } ;
struct gb_connection {TYPE_2__* bundle; scalar_t__ mode_switch; TYPE_1__* intf; int /*<<< orphan*/  intf_cport_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct gb_control* control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 scalar_t__ FUNC2 (struct gb_connection*) ; 
 int FUNC3 (struct gb_control*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gb_control*) ; 

__attribute__((used)) static void
FUNC5(struct gb_connection *connection)
{
	struct gb_control *control;
	u16 cport_id = connection->intf_cport_id;
	int ret;

	if (FUNC2(connection))
		return;

	control = connection->intf->control;

	if (FUNC1(connection)) {
		if (connection->mode_switch) {
			ret = FUNC4(control);
			if (ret) {
				/*
				 * Allow mode switch to time out waiting for
				 * mailbox event.
				 */
				return;
			}
		}

		return;
	}

	ret = FUNC3(control, cport_id);
	if (ret) {
		FUNC0(&connection->bundle->dev,
			 "failed to disconnect cport: %d\n", ret);
	}
}