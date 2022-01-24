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
typedef  int /*<<< orphan*/  u16 ;
struct gb_operation {TYPE_1__* request; } ;
struct gb_control_disconnecting_request {int /*<<< orphan*/  cport_id; } ;
struct gb_control {int /*<<< orphan*/  dev; int /*<<< orphan*/  connection; } ;
struct TYPE_2__ {struct gb_control_disconnecting_request* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_CONTROL_TYPE_DISCONNECTING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct gb_operation* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*) ; 

int FUNC5(struct gb_control *control,
				       u16 cport_id)
{
	struct gb_control_disconnecting_request *request;
	struct gb_operation *operation;
	int ret;

	operation = FUNC2(control->connection,
					     GB_CONTROL_TYPE_DISCONNECTING,
					     sizeof(*request), 0, 0,
					     GFP_KERNEL);
	if (!operation)
		return -ENOMEM;

	request = operation->request->payload;
	request->cport_id = FUNC0(cport_id);

	ret = FUNC4(operation);
	if (ret) {
		FUNC1(&control->dev, "failed to send disconnecting: %d\n",
			ret);
	}

	FUNC3(operation);

	return ret;
}