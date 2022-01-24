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
 scalar_t__ GB_CONNECTION_STATE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct gb_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*) ; 

void FUNC10(struct gb_connection *connection)
{
	FUNC5(&connection->mutex);

	if (connection->state == GB_CONNECTION_STATE_DISABLED)
		goto out_unlock;

	FUNC9(connection);

	FUNC7(&connection->lock);
	connection->state = GB_CONNECTION_STATE_DISABLED;
	FUNC0(connection, -ESHUTDOWN);
	FUNC8(&connection->lock);

	FUNC3(connection);

	FUNC4(connection);
	FUNC1(connection);

	FUNC2(connection);
out_unlock:
	FUNC6(&connection->mutex);
}