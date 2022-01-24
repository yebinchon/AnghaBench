#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct serdev_device {TYPE_1__ dev; } ;
struct gnss_serial {int speed; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int*) ; 
 struct gnss_serial* FUNC1 (struct serdev_device*) ; 

__attribute__((used)) static int FUNC2(struct serdev_device *serdev)
{
	struct gnss_serial *gserial = FUNC1(serdev);
	struct device_node *node = serdev->dev.of_node;
	u32 speed = 4800;

	FUNC0(node, "current-speed", &speed);

	gserial->speed = speed;

	return 0;
}