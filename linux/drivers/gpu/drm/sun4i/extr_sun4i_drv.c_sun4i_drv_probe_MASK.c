#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct endpoint_list {int /*<<< orphan*/  fifo; } ;
struct device_node {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,struct component_match*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct device_node**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int) ; 
 int FUNC5 (TYPE_1__*,struct endpoint_list*,struct component_match**,struct device_node*) ; 
 int /*<<< orphan*/  sun4i_drv_master_ops ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct component_match *match = NULL;
	struct device_node *np = pdev->dev.of_node, *endpoint;
	struct endpoint_list list;
	int i, ret, count = 0;

	FUNC0(list.fifo);

	for (i = 0;; i++) {
		struct device_node *pipeline = FUNC4(np,
								"allwinner,pipelines",
								i);
		if (!pipeline)
			break;

		FUNC3(&list.fifo, pipeline);
	}

	while (FUNC2(&list.fifo, &endpoint)) {
		/* process this endpoint */
		ret = FUNC5(&pdev->dev, &list, &match,
					      endpoint);

		/* sun4i_drv_add_endpoints can fail to allocate memory */
		if (ret < 0)
			return ret;

		count += ret;
	}

	if (count)
		return FUNC1(&pdev->dev,
						       &sun4i_drv_master_ops,
						       match);
	else
		return 0;
}