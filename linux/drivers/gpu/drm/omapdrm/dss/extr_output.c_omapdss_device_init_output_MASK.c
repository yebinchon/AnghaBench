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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_device {scalar_t__ type; int /*<<< orphan*/ * panel; int /*<<< orphan*/  bridge; TYPE_1__* next; TYPE_3__* dev; int /*<<< orphan*/  of_ports; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (struct device_node*) ; 

int FUNC10(struct omap_dss_device *out)
{
	struct device_node *remote_node;

	remote_node = FUNC6(out->dev->of_node,
					       FUNC3(out->of_ports) - 1, 0);
	if (!remote_node) {
		FUNC1(out->dev, "failed to find video sink\n");
		return 0;
	}

	out->next = FUNC9(remote_node);
	out->bridge = FUNC4(remote_node);
	out->panel = FUNC5(remote_node);
	if (FUNC0(out->panel))
		out->panel = NULL;

	FUNC7(remote_node);

	if (out->next && out->type != out->next->type) {
		FUNC2(out->dev, "output type and display type don't match\n");
		FUNC8(out->next);
		out->next = NULL;
		return -EINVAL;
	}

	return out->next || out->bridge || out->panel ? 0 : -EPROBE_DEFER;
}