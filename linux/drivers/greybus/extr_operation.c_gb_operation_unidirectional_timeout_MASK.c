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
struct gb_operation {TYPE_2__* request; } ;
struct gb_connection {int /*<<< orphan*/  name; TYPE_1__* hd; } ;
struct TYPE_4__ {int /*<<< orphan*/  payload; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GB_OPERATION_FLAG_UNIDIRECTIONAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,int) ; 
 struct gb_operation* FUNC1 (struct gb_connection*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 
 int FUNC3 (struct gb_operation*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 

int FUNC5(struct gb_connection *connection,
					int type, void *request,
					int request_size,
					unsigned int timeout)
{
	struct gb_operation *operation;
	int ret;

	if (request_size && !request)
		return -EINVAL;

	operation = FUNC1(connection, type,
					      request_size, 0,
					      GB_OPERATION_FLAG_UNIDIRECTIONAL,
					      GFP_KERNEL);
	if (!operation)
		return -ENOMEM;

	if (request_size)
		FUNC4(operation->request->payload, request, request_size);

	ret = FUNC3(operation, timeout);
	if (ret) {
		FUNC0(&connection->hd->dev,
			"%s: unidirectional operation of type 0x%02x failed: %d\n",
			connection->name, type, ret);
	}

	FUNC2(operation);

	return ret;
}