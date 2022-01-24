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
struct gb_connection {scalar_t__ state; int /*<<< orphan*/  hd_cport_id; int /*<<< orphan*/  hd; int /*<<< orphan*/  wq; int /*<<< orphan*/  hd_links; int /*<<< orphan*/  bundle_links; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPORT_ID_BAD ; 
 scalar_t__ GB_CONNECTION_STATE_DISABLED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_connection_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_connections_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct gb_connection *connection)
{
	if (!connection)
		return;

	if (FUNC0(connection->state != GB_CONNECTION_STATE_DISABLED))
		FUNC2(connection);

	FUNC6(&gb_connection_mutex);

	FUNC8(&gb_connections_lock);
	FUNC5(&connection->bundle_links);
	FUNC5(&connection->hd_links);
	FUNC9(&gb_connections_lock);

	FUNC1(connection->wq);

	FUNC4(connection->hd, connection->hd_cport_id);
	connection->hd_cport_id = CPORT_ID_BAD;

	FUNC7(&gb_connection_mutex);

	FUNC3(connection);
}