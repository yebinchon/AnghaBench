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
struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct omap_dss_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct omap_dss_device* FUNC3 (struct device_node*) ; 

struct omap_dss_device *
FUNC4(struct device_node *node, unsigned int port)
{
	struct device_node *remote_node;
	struct omap_dss_device *dssdev;

	remote_node = FUNC1(node, port, 0);
	if (!remote_node)
		return NULL;

	dssdev = FUNC3(remote_node);
	FUNC2(remote_node);

	return dssdev ? dssdev : FUNC0(-EPROBE_DEFER);
}