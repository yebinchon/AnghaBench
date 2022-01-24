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
struct gb_operation {int /*<<< orphan*/  links; int /*<<< orphan*/  active; struct gb_connection* connection; } ;
struct gb_connection {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  operations; } ;

/* Variables and functions */
 int ENOTCONN ; 
#define  GB_CONNECTION_STATE_DISCONNECTING 130 
#define  GB_CONNECTION_STATE_ENABLED 129 
#define  GB_CONNECTION_STATE_ENABLED_TX 128 
 int /*<<< orphan*/  FUNC0 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_operation*) ; 

__attribute__((used)) static int FUNC6(struct gb_operation *operation)
{
	struct gb_connection *connection = operation->connection;
	unsigned long flags;

	FUNC3(&connection->lock, flags);
	switch (connection->state) {
	case GB_CONNECTION_STATE_ENABLED:
		break;
	case GB_CONNECTION_STATE_ENABLED_TX:
		if (FUNC1(operation))
			goto err_unlock;
		break;
	case GB_CONNECTION_STATE_DISCONNECTING:
		if (!FUNC0(operation))
			goto err_unlock;
		break;
	default:
		goto err_unlock;
	}

	if (operation->active++ == 0)
		FUNC2(&operation->links, &connection->operations);

	FUNC5(operation);

	FUNC4(&connection->lock, flags);

	return 0;

err_unlock:
	FUNC4(&connection->lock, flags);

	return -ENOTCONN;
}