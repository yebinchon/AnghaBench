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
struct gb_svc_hello_request {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  endo_id; } ;
struct gb_svc {int /*<<< orphan*/  dev; int /*<<< orphan*/  ap_intf_id; int /*<<< orphan*/  endo_id; } ;
struct gb_operation {TYPE_1__* request; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int payload_size; struct gb_svc_hello_request* payload; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gb_svc* FUNC4 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct gb_svc*) ; 
 int FUNC6 (struct gb_operation*) ; 
 int FUNC7 (struct gb_svc*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_svc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_svc *svc = FUNC4(connection);
	struct gb_svc_hello_request *hello_request;
	int ret;

	if (op->request->payload_size < sizeof(*hello_request)) {
		FUNC1(&svc->dev, "short hello request (%zu < %zu)\n",
			 op->request->payload_size,
			 sizeof(*hello_request));
		return -EINVAL;
	}

	hello_request = op->request->payload;
	svc->endo_id = FUNC9(hello_request->endo_id);
	svc->ap_intf_id = hello_request->interface_id;

	ret = FUNC2(&svc->dev);
	if (ret) {
		FUNC0(&svc->dev, "failed to register svc device: %d\n", ret);
		return ret;
	}

	ret = FUNC7(svc);
	if (ret) {
		FUNC0(&svc->dev, "failed to create watchdog: %d\n", ret);
		goto err_unregister_device;
	}

	FUNC5(svc);

	return FUNC6(op);

err_unregister_device:
	FUNC8(svc);
	FUNC3(&svc->dev);
	return ret;
}