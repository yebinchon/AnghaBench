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
struct gb_operation {TYPE_1__* request; } ;
struct gb_cport_shutdown_request {int /*<<< orphan*/  phase; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {struct gb_cport_shutdown_request* payload; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GB_REQUEST_TYPE_CPORT_SHUTDOWN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gb_operation* FUNC0 (struct gb_connection*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_operation*) ; 
 int FUNC2 (struct gb_operation*) ; 

__attribute__((used)) static int FUNC3(struct gb_connection *connection,
					    u8 phase)
{
	struct gb_cport_shutdown_request *req;
	struct gb_operation *operation;
	int ret;

	operation = FUNC0(connection,
					     GB_REQUEST_TYPE_CPORT_SHUTDOWN,
					     sizeof(*req), 0, 0,
					     GFP_KERNEL);
	if (!operation)
		return -ENOMEM;

	req = operation->request->payload;
	req->phase = phase;

	ret = FUNC2(operation);

	FUNC1(operation);

	return ret;
}