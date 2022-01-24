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
typedef  int /*<<< orphan*/  u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct ib_device *device,
		  u8 port_num,
		  struct ib_port_attr *port_attr)
{
	if (!FUNC2(device, port_num))
		return -EINVAL;

	if (FUNC3(device, port_num))
		return FUNC1(device, port_num, port_attr);
	else
		return FUNC0(device, port_num, port_attr);
}