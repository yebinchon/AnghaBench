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
struct gb_interface {int quirks; int /*<<< orphan*/  dev; } ;
struct gb_host_device {int /*<<< orphan*/  connections; int /*<<< orphan*/  dev; } ;
struct gb_connection {int hd_cport_id; int intf_cport_id; unsigned long flags; int /*<<< orphan*/  bundle_links; int /*<<< orphan*/  hd_links; int /*<<< orphan*/  kref; int /*<<< orphan*/  wq; int /*<<< orphan*/  operations; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; int /*<<< orphan*/  op_cycle; int /*<<< orphan*/  state; int /*<<< orphan*/  handler; struct gb_bundle* bundle; struct gb_interface* intf; struct gb_host_device* hd; } ;
struct gb_bundle {int /*<<< orphan*/  connections; } ;
typedef  int /*<<< orphan*/  gb_request_handler_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct gb_connection* FUNC0 (int) ; 
 unsigned long GB_CONNECTION_FLAG_NO_FLOWCTRL ; 
 int /*<<< orphan*/  GB_CONNECTION_STATE_DISABLED ; 
 int GB_INTERFACE_QUIRK_NO_CPORT_FEATURES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct gb_interface*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_connection*) ; 
 int /*<<< orphan*/  gb_connection_mutex ; 
 int /*<<< orphan*/  gb_connections_lock ; 
 int FUNC8 (struct gb_host_device*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_host_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct gb_connection* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct gb_connection*) ; 

__attribute__((used)) static struct gb_connection *
FUNC21(struct gb_host_device *hd, int hd_cport_id,
		      struct gb_interface *intf,
		      struct gb_bundle *bundle, int cport_id,
		      gb_request_handler_t handler,
		      unsigned long flags)
{
	struct gb_connection *connection;
	int ret;

	FUNC15(&gb_connection_mutex);

	if (intf && FUNC6(intf, cport_id)) {
		FUNC4(&intf->dev, "cport %u already in use\n", cport_id);
		ret = -EBUSY;
		goto err_unlock;
	}

	ret = FUNC8(hd, hd_cport_id, flags);
	if (ret < 0) {
		FUNC4(&hd->dev, "failed to allocate cport: %d\n", ret);
		goto err_unlock;
	}
	hd_cport_id = ret;

	connection = FUNC12(sizeof(*connection), GFP_KERNEL);
	if (!connection) {
		ret = -ENOMEM;
		goto err_hd_cport_release;
	}

	connection->hd_cport_id = hd_cport_id;
	connection->intf_cport_id = cport_id;
	connection->hd = hd;
	connection->intf = intf;
	connection->bundle = bundle;
	connection->handler = handler;
	connection->flags = flags;
	if (intf && (intf->quirks & GB_INTERFACE_QUIRK_NO_CPORT_FEATURES))
		connection->flags |= GB_CONNECTION_FLAG_NO_FLOWCTRL;
	connection->state = GB_CONNECTION_STATE_DISABLED;

	FUNC3(&connection->op_cycle, 0);
	FUNC14(&connection->mutex);
	FUNC17(&connection->lock);
	FUNC1(&connection->operations);

	connection->wq = FUNC2("%s:%d", WQ_UNBOUND, 1,
					 FUNC5(&hd->dev), hd_cport_id);
	if (!connection->wq) {
		ret = -ENOMEM;
		goto err_free_connection;
	}

	FUNC11(&connection->kref);

	FUNC7(connection);

	FUNC18(&gb_connections_lock);
	FUNC13(&connection->hd_links, &hd->connections);

	if (bundle)
		FUNC13(&connection->bundle_links, &bundle->connections);
	else
		FUNC1(&connection->bundle_links);

	FUNC19(&gb_connections_lock);

	FUNC16(&gb_connection_mutex);

	FUNC20(connection);

	return connection;

err_free_connection:
	FUNC10(connection);
err_hd_cport_release:
	FUNC9(hd, hd_cport_id);
err_unlock:
	FUNC16(&gb_connection_mutex);

	return FUNC0(ret);
}