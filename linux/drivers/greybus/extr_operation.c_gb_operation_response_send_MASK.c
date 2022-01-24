#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gb_operation {TYPE_3__* response; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* hd; } ;
struct TYPE_6__ {TYPE_2__* header; } ;
struct TYPE_5__ {int /*<<< orphan*/  result; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*) ; 
 scalar_t__ FUNC5 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_operation*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_operation*,int) ; 

__attribute__((used)) static int FUNC10(struct gb_operation *operation,
				      int errno)
{
	struct gb_connection *connection = operation->connection;
	int ret;

	if (!operation->response &&
	    !FUNC5(operation)) {
		if (!FUNC8(operation, 0, GFP_KERNEL))
			return -ENOMEM;
	}

	/* Record the result */
	if (!FUNC9(operation, errno)) {
		FUNC0(&connection->hd->dev, "request result already set\n");
		return -EIO;	/* Shouldn't happen */
	}

	/* Sender of request does not care about response. */
	if (FUNC5(operation))
		return 0;

	/* Reference will be dropped when message has been sent. */
	FUNC3(operation);
	ret = FUNC4(operation);
	if (ret)
		goto err_put;

	/* Fill in the response header and send it */
	operation->response->header->result = FUNC2(errno);

	ret = FUNC1(operation->response, GFP_KERNEL);
	if (ret)
		goto err_put_active;

	return 0;

err_put_active:
	FUNC7(operation);
err_put:
	FUNC6(operation);

	return ret;
}