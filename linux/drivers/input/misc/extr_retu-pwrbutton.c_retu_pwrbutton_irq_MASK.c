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
struct retu_dev {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  RETU_REG_STATUS ; 
 int RETU_STATUS_PWRONX ; 
 struct retu_dev* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct retu_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_pwr)
{
	struct input_dev *idev = _pwr;
	struct retu_dev *rdev = FUNC0(idev);
	bool state;

	state = !(FUNC3(rdev, RETU_REG_STATUS) & RETU_STATUS_PWRONX);
	FUNC1(idev, KEY_POWER, state);
	FUNC2(idev);

	return IRQ_HANDLED;
}