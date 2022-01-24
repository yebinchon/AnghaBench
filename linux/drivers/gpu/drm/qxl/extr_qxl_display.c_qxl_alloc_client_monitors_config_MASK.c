#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qxl_device {TYPE_1__* client_monitors_config; } ;
struct TYPE_4__ {unsigned int count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  heads ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct qxl_device *qdev,
		unsigned int count)
{
	if (qdev->client_monitors_config &&
	    count > qdev->client_monitors_config->count) {
		FUNC0(qdev->client_monitors_config);
		qdev->client_monitors_config = NULL;
	}
	if (!qdev->client_monitors_config) {
		qdev->client_monitors_config = FUNC1(
				FUNC2(qdev->client_monitors_config,
				heads, count), GFP_KERNEL);
		if (!qdev->client_monitors_config)
			return -ENOMEM;
	}
	qdev->client_monitors_config->count = count;
	return 0;
}