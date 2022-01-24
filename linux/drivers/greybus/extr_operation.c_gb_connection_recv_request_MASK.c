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
typedef  int /*<<< orphan*/  u16 ;
struct gb_operation_msg_hdr {int /*<<< orphan*/  type; int /*<<< orphan*/  operation_id; } ;
struct gb_operation {int /*<<< orphan*/  work; int /*<<< orphan*/  request; } ;
struct gb_connection {int /*<<< orphan*/  wq; int /*<<< orphan*/  name; TYPE_1__* hd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gb_operation* FUNC1 (struct gb_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC2 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 scalar_t__ FUNC4 (struct gb_operation*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gb_connection *connection,
				const struct gb_operation_msg_hdr *header,
				void *data, size_t size)
{
	struct gb_operation *operation;
	u16 operation_id;
	u8 type;
	int ret;

	operation_id = FUNC5(header->operation_id);
	type = header->type;

	operation = FUNC1(connection, operation_id,
						 type, data, size);
	if (!operation) {
		FUNC0(&connection->hd->dev,
			"%s: can't create incoming operation\n",
			connection->name);
		return;
	}

	ret = FUNC2(operation);
	if (ret) {
		FUNC3(operation);
		return;
	}
	FUNC7(operation->request);

	/*
	 * The initial reference to the operation will be dropped when the
	 * request handler returns.
	 */
	if (FUNC4(operation, -EINPROGRESS))
		FUNC6(connection->wq, &operation->work);
}