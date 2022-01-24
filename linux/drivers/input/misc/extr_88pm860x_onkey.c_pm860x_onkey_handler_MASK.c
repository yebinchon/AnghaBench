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
struct pm860x_onkey_info {int /*<<< orphan*/  i2c; int /*<<< orphan*/  idev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  LONG_ONKEY_EN ; 
 int ONKEY_STATUS ; 
 int /*<<< orphan*/  PM8607_STATUS_2 ; 
 int /*<<< orphan*/  PM8607_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct pm860x_onkey_info *info = data;
	int ret;

	ret = FUNC2(info->i2c, PM8607_STATUS_2);
	ret &= ONKEY_STATUS;
	FUNC0(info->idev, KEY_POWER, ret);
	FUNC1(info->idev);

	/* Enable 8-second long onkey detection */
	FUNC3(info->i2c, PM8607_WAKEUP, 3, LONG_ONKEY_EN);
	return IRQ_HANDLED;
}