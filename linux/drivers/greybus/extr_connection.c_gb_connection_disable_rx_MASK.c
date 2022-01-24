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
struct gb_connection {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ GB_CONNECTION_STATE_ENABLED ; 
 scalar_t__ GB_CONNECTION_STATE_ENABLED_TX ; 
 int /*<<< orphan*/  FUNC0 (struct gb_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 

void FUNC6(struct gb_connection *connection)
{
	FUNC1(&connection->mutex);

	FUNC3(&connection->lock);
	if (connection->state != GB_CONNECTION_STATE_ENABLED) {
		FUNC4(&connection->lock);
		goto out_unlock;
	}
	connection->state = GB_CONNECTION_STATE_ENABLED_TX;
	FUNC0(connection, -ESHUTDOWN);
	FUNC4(&connection->lock);

	FUNC5(connection);

out_unlock:
	FUNC2(&connection->mutex);
}