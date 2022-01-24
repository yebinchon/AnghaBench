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
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;
struct i2c_adapter {struct irq_domain* host_notify_domain; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_ADDR_7BITS_COUNT ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_HOST_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_host_notify_irq_ops ; 
 struct irq_domain* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap)
{
	struct irq_domain *domain;

	if (!FUNC0(adap, I2C_FUNC_SMBUS_HOST_NOTIFY))
		return 0;

	domain = FUNC1(adap->dev.fwnode,
					  I2C_ADDR_7BITS_COUNT,
					  &i2c_host_notify_irq_ops, adap);
	if (!domain)
		return -ENOMEM;

	adap->host_notify_domain = domain;

	return 0;
}