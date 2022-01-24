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
struct gb_operation {int /*<<< orphan*/  work; int /*<<< orphan*/  type; struct gb_message* response; struct gb_connection* connection; } ;
struct gb_message {struct gb_operation* operation; } ;
struct gb_host_device {int dummy; } ;
struct gb_connection {int /*<<< orphan*/  name; TYPE_1__* hd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gb_operation_completion_wq ; 
 scalar_t__ FUNC1 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_operation*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_operation*) ; 
 scalar_t__ FUNC4 (struct gb_operation*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct gb_host_device *hd,
			  struct gb_message *message, int status)
{
	struct gb_operation *operation = message->operation;
	struct gb_connection *connection = operation->connection;

	/*
	 * If the message was a response, we just need to drop our
	 * reference to the operation.  If an error occurred, report
	 * it.
	 *
	 * For requests, if there's no error and the operation in not
	 * unidirectional, there's nothing more to do until the response
	 * arrives. If an error occurred attempting to send it, or if the
	 * operation is unidrectional, record the result of the operation and
	 * schedule its completion.
	 */
	if (message == operation->response) {
		if (status) {
			FUNC0(&connection->hd->dev,
				"%s: error sending response 0x%02x: %d\n",
				connection->name, operation->type, status);
		}

		FUNC3(operation);
		FUNC2(operation);
	} else if (status || FUNC1(operation)) {
		if (FUNC4(operation, status)) {
			FUNC5(gb_operation_completion_wq,
				   &operation->work);
		}
	}
}