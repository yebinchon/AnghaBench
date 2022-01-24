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
struct device {int dummy; } ;
struct coresight_device {int orphan; TYPE_1__* pdata; } ;
struct coresight_connection {int /*<<< orphan*/ * child_dev; int /*<<< orphan*/  child_fwnode; } ;
struct TYPE_2__ {int nr_outport; struct coresight_connection* conns; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  coresight_bustype ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct coresight_device *csdev)
{
	int i;

	for (i = 0; i < csdev->pdata->nr_outport; i++) {
		struct coresight_connection *conn = &csdev->pdata->conns[i];
		struct device *dev = NULL;

		dev = FUNC0(&coresight_bustype, conn->child_fwnode);
		if (dev) {
			conn->child_dev = FUNC2(dev);
			/* and put reference from 'bus_find_device()' */
			FUNC1(dev);
		} else {
			csdev->orphan = true;
			conn->child_dev = NULL;
		}
	}
}