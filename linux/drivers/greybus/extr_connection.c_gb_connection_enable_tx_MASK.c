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
struct gb_connection {scalar_t__ state; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ GB_CONNECTION_STATE_ENABLED ; 
 scalar_t__ GB_CONNECTION_STATE_ENABLED_TX ; 
 int FUNC0 (struct gb_connection*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 

int FUNC4(struct gb_connection *connection)
{
	int ret = 0;

	FUNC1(&connection->mutex);

	if (connection->state == GB_CONNECTION_STATE_ENABLED) {
		ret = -EINVAL;
		goto out_unlock;
	}

	if (connection->state == GB_CONNECTION_STATE_ENABLED_TX)
		goto out_unlock;

	ret = FUNC0(connection, false);
	if (!ret)
		FUNC3(connection);

out_unlock:
	FUNC2(&connection->mutex);

	return ret;
}