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
struct gb_svc_intf_oops_request {int dummy; } ;
struct gb_svc {int /*<<< orphan*/  dev; } ;
struct gb_operation {TYPE_1__* request; int /*<<< orphan*/  connection; } ;
struct TYPE_2__ {int payload_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct gb_svc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_operation*) ; 

__attribute__((used)) static int FUNC3(struct gb_operation *op)
{
	struct gb_svc *svc = FUNC1(op->connection);
	struct gb_svc_intf_oops_request *request;

	if (op->request->payload_size < sizeof(*request)) {
		FUNC0(&svc->dev, "short intf-oops request received (%zu < %zu)\n",
			 op->request->payload_size, sizeof(*request));
		return -EINVAL;
	}

	return FUNC2(op);
}