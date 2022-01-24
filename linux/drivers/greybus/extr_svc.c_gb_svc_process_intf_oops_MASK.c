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
typedef  int /*<<< orphan*/  u8 ;
struct gb_svc_intf_oops_request {int /*<<< orphan*/  reason; int /*<<< orphan*/  intf_id; } ;
struct gb_svc {int /*<<< orphan*/  dev; } ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_interface {int disconnected; int /*<<< orphan*/  mutex; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_svc_intf_oops_request* payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gb_svc* FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_interface*) ; 
 struct gb_interface* FUNC5 (struct gb_svc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct gb_operation *operation)
{
	struct gb_svc_intf_oops_request *request;
	struct gb_connection *connection = operation->connection;
	struct gb_svc *svc = FUNC2(connection);
	struct gb_interface *intf;
	u8 intf_id;
	u8 reason;

	/* The request message size has already been verified. */
	request = operation->request->payload;
	intf_id = request->intf_id;
	reason = request->reason;

	intf = FUNC5(svc, intf_id);
	if (!intf) {
		FUNC1(&svc->dev, "unexpected interface-oops event %u\n",
			 intf_id);
		return;
	}

	FUNC0(&svc->dev, "Deactivating interface %u, interface oops reason = %u\n",
		 intf_id, reason);

	FUNC6(&intf->mutex);
	intf->disconnected = true;
	FUNC4(intf);
	FUNC3(intf);
	FUNC7(&intf->mutex);
}