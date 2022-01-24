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
typedef  int u16 ;
struct highlander_i2c_dev {int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SMCR ; 
 int SMCR_ACKE ; 
 int SMCR_IRIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct highlander_i2c_dev*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct highlander_i2c_dev *dev)
{
	u16 tmp = FUNC2(dev->base + SMCR);

	if ((tmp & (SMCR_IRIC | SMCR_ACKE)) == SMCR_ACKE) {
		FUNC0(dev->dev, "ack abnormality\n");
		return FUNC1(dev);
	}

	return 0;
}