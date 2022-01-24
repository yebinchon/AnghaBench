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
struct snd_soc_component {int dummy; } ;
struct of_endpoint {int port; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct device_node*,struct of_endpoint*) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_component *component,
				  struct device_node *endpoint)
{
	struct of_endpoint of_ep;
	int ret;

	ret = FUNC0(endpoint, &of_ep);
	if (ret < 0)
		return ret;

	/*
	 * HDMI sound should be located as reg = <2>
	 * Then, it is sound port 0
	 */
	if (of_ep.port == 2)
		return 0;

	return -EINVAL;
}