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
struct TYPE_3__ {int /*<<< orphan*/  guid; } ;
struct vmbus_dynid {int /*<<< orphan*/  node; TYPE_1__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct hv_driver {int /*<<< orphan*/  driver; TYPE_2__ dynids; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct vmbus_dynid* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hv_driver *drv, guid_t *guid)
{
	struct vmbus_dynid *dynid;

	dynid = FUNC1(sizeof(*dynid), GFP_KERNEL);
	if (!dynid)
		return -ENOMEM;

	dynid->id.guid = *guid;

	FUNC3(&drv->dynids.lock);
	FUNC2(&dynid->node, &drv->dynids.list);
	FUNC4(&drv->dynids.lock);

	return FUNC0(&drv->driver);
}