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
struct hdmi_context {int /*<<< orphan*/  bridge; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct hdmi_context *hdata)
{
	struct device *dev = hdata->dev;
	struct device_node *ep, *np;

	ep = FUNC2(dev->of_node, 1, -1);
	if (!ep)
		return 0;

	np = FUNC3(ep);
	FUNC4(ep);
	if (!np) {
		FUNC0(dev, "failed to get remote port parent");
		return -EINVAL;
	}

	hdata->bridge = FUNC1(np);
	FUNC4(np);

	if (!hdata->bridge)
		return -EPROBE_DEFER;

	return 0;
}