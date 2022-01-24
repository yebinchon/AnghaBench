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
struct ib_umad_port {int /*<<< orphan*/  umad_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ib_device {TYPE_1__ dev; } ;
struct device {int /*<<< orphan*/  release; int /*<<< orphan*/  parent; int /*<<< orphan*/ * class; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct ib_umad_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_umad_release_port ; 
 int /*<<< orphan*/  umad_class ; 

__attribute__((used)) static void FUNC3(struct device *dev,
				  struct ib_umad_port *port,
				  const struct ib_device *device)
{
	FUNC1(dev);
	FUNC2(port->umad_dev);
	dev->class = &umad_class;
	dev->parent = device->dev.parent;
	FUNC0(dev, port);
	dev->release = ib_umad_release_port;
}