#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dual_link; } ;
struct thc63_dev {TYPE_1__ timings; TYPE_2__* dev; int /*<<< orphan*/  next; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  THC63_LVDS_IN1 ; 
 int /*<<< orphan*/  THC63_RGB_OUT0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct device_node* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct thc63_dev *thc63)
{
	struct device_node *endpoint;
	struct device_node *remote;

	endpoint = FUNC4(thc63->dev->of_node,
						 THC63_RGB_OUT0, -1);
	if (!endpoint) {
		FUNC1(thc63->dev, "Missing endpoint in port@%u\n",
			THC63_RGB_OUT0);
		return -ENODEV;
	}

	remote = FUNC5(endpoint);
	FUNC6(endpoint);
	if (!remote) {
		FUNC1(thc63->dev, "Endpoint in port@%u unconnected\n",
			THC63_RGB_OUT0);
		return -ENODEV;
	}

	if (!FUNC2(remote)) {
		FUNC1(thc63->dev, "port@%u remote endpoint is disabled\n",
			THC63_RGB_OUT0);
		FUNC6(remote);
		return -ENODEV;
	}

	thc63->next = FUNC3(remote);
	FUNC6(remote);
	if (!thc63->next)
		return -EPROBE_DEFER;

	endpoint = FUNC4(thc63->dev->of_node,
						 THC63_LVDS_IN1, -1);
	if (endpoint) {
		remote = FUNC5(endpoint);
		FUNC6(endpoint);

		if (remote) {
			if (FUNC2(remote))
				thc63->timings.dual_link = true;
			FUNC6(remote);
		}
	}

	FUNC0(thc63->dev, "operating in %s-link mode\n",
		thc63->timings.dual_link ? "dual" : "single");

	return 0;
}