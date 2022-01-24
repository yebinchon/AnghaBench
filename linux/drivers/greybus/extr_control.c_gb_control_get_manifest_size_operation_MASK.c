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
struct gb_interface {TYPE_1__* control; } ;
struct gb_control_get_manifest_size_response {int /*<<< orphan*/  size; } ;
struct gb_connection {TYPE_2__* intf; } ;
typedef  int /*<<< orphan*/  response ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct gb_connection* connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_CONTROL_TYPE_GET_MANIFEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gb_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_control_get_manifest_size_response*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct gb_interface *intf)
{
	struct gb_control_get_manifest_size_response response;
	struct gb_connection *connection = intf->control->connection;
	int ret;

	ret = FUNC1(connection, GB_CONTROL_TYPE_GET_MANIFEST_SIZE,
				NULL, 0, &response, sizeof(response));
	if (ret) {
		FUNC0(&connection->intf->dev,
			"failed to get manifest size: %d\n", ret);
		return ret;
	}

	return FUNC2(response.size);
}