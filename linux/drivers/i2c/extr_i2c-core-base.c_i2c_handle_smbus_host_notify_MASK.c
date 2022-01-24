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
struct i2c_adapter {int /*<<< orphan*/  host_notify_domain; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned short) ; 

int FUNC2(struct i2c_adapter *adap, unsigned short addr)
{
	int irq;

	if (!adap)
		return -EINVAL;

	irq = FUNC1(adap->host_notify_domain, addr);
	if (irq <= 0)
		return -ENXIO;

	FUNC0(irq);

	return 0;
}