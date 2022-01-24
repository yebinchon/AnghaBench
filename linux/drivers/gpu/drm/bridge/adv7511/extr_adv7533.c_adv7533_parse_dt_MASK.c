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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct adv7511 {int num_dsi_lanes; int use_timing_gen; int rgb; int embedded_sync; int /*<<< orphan*/  host_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int*) ; 

int FUNC4(struct device_node *np, struct adv7511 *adv)
{
	u32 num_lanes;

	FUNC3(np, "adi,dsi-lanes", &num_lanes);

	if (num_lanes < 1 || num_lanes > 4)
		return -EINVAL;

	adv->num_dsi_lanes = num_lanes;

	adv->host_node = FUNC0(np, 0, 0);
	if (!adv->host_node)
		return -ENODEV;

	FUNC1(adv->host_node);

	adv->use_timing_gen = !FUNC2(np,
						"adi,disable-timing-generator");

	/* TODO: Check if these need to be parsed by DT or not */
	adv->rgb = true;
	adv->embedded_sync = false;

	return 0;
}