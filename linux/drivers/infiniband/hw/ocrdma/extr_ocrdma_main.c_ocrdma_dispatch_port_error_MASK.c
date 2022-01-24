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
struct ocrdma_dev {int /*<<< orphan*/  ibdev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int /*<<< orphan*/ * device; TYPE_1__ element; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct ib_event*) ; 

__attribute__((used)) static int FUNC1(struct ocrdma_dev *dev)
{
	struct ib_event err_event;

	err_event.event = IB_EVENT_PORT_ERR;
	err_event.element.port_num = 1;
	err_event.device = &dev->ibdev;
	FUNC0(&err_event);
	return 0;
}