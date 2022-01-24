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
struct coresight_device {int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct coresight_connection {int child_port; struct coresight_device* child_dev; } ;
struct TYPE_2__ {int nr_outport; struct coresight_connection* conns; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct coresight_device *csdev,
				      struct coresight_device *parent)
{
	int i;
	struct coresight_connection *conn;

	for (i = 0; i < parent->pdata->nr_outport; i++) {
		conn = &parent->pdata->conns[i];
		if (conn->child_dev == csdev)
			return conn->child_port;
	}

	FUNC0(&csdev->dev, "couldn't find inport, parent: %s, child: %s\n",
		FUNC1(&parent->dev), FUNC1(&csdev->dev));

	return -ENODEV;
}