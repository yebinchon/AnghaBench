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
struct gb_connection {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  mode_switch; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ GB_CONNECTION_STATE_DISABLED ; 
 scalar_t__ GB_CONNECTION_STATE_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct gb_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct gb_connection*) ; 

void FUNC15(struct gb_connection *connection)
{
	FUNC10(&connection->mutex);

	if (connection->state == GB_CONNECTION_STATE_DISABLED)
		goto out_unlock;

	FUNC14(connection);

	FUNC12(&connection->lock);
	connection->state = GB_CONNECTION_STATE_DISCONNECTING;
	FUNC0(connection, -ESHUTDOWN);
	FUNC13(&connection->lock);

	FUNC7(connection);

	FUNC2(connection);
	FUNC3(connection);
	FUNC8(connection);
	FUNC4(connection);
	FUNC1(connection);

	connection->state = GB_CONNECTION_STATE_DISABLED;

	/* control-connection tear down is deferred when mode switching */
	if (!connection->mode_switch) {
		FUNC9(connection);
		FUNC5(connection);

		FUNC6(connection);
	}

out_unlock:
	FUNC11(&connection->mutex);
}