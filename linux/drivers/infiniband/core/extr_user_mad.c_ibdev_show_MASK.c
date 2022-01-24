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
struct ib_umad_port {TYPE_1__* ib_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct ib_umad_port* FUNC0 (struct device*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	struct ib_umad_port *port = FUNC0(dev);

	if (!port)
		return -ENODEV;

	return FUNC2(buf, "%s\n", FUNC1(&port->ib_dev->dev));
}