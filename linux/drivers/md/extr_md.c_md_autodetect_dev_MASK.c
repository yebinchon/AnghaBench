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
struct detected_devices_node {int /*<<< orphan*/  list; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  all_detected_devices ; 
 int /*<<< orphan*/  detected_devices_mutex ; 
 struct detected_devices_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(dev_t dev)
{
	struct detected_devices_node *node_detected_dev;

	node_detected_dev = FUNC0(sizeof(*node_detected_dev), GFP_KERNEL);
	if (node_detected_dev) {
		node_detected_dev->dev = dev;
		FUNC2(&detected_devices_mutex);
		FUNC1(&node_detected_dev->list, &all_detected_devices);
		FUNC3(&detected_devices_mutex);
	}
}