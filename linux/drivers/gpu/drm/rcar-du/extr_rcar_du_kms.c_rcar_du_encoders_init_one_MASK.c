#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rcar_du_device {int /*<<< orphan*/  dev; } ;
struct of_endpoint {struct device_node* local_node; } ;
struct device_node {int dummy; } ;
typedef  enum rcar_du_output { ____Placeholder_rcar_du_output } rcar_du_output ;

/* Variables and functions */
 int ENODEV ; 
 int ENOLINK ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct device_node*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct rcar_du_device*,int,struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct rcar_du_device *rcdu,
				     enum rcar_du_output output,
				     struct of_endpoint *ep)
{
	struct device_node *entity;
	int ret;

	/* Locate the connected entity and initialize the encoder. */
	entity = FUNC3(ep->local_node);
	if (!entity) {
		FUNC0(rcdu->dev, "unconnected endpoint %pOF, skipping\n",
			ep->local_node);
		return -ENODEV;
	}

	if (!FUNC2(entity)) {
		FUNC0(rcdu->dev,
			"connected entity %pOF is disabled, skipping\n",
			entity);
		FUNC4(entity);
		return -ENODEV;
	}

	ret = FUNC5(rcdu, output, entity);
	if (ret && ret != -EPROBE_DEFER && ret != -ENOLINK)
		FUNC1(rcdu->dev,
			 "failed to initialize encoder %pOF on output %u (%d), skipping\n",
			 entity, output, ret);

	FUNC4(entity);

	return ret;
}