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
typedef  int u32 ;
struct sirfsoc_pwrc_drvdata {int /*<<< orphan*/  work; int /*<<< orphan*/  input; scalar_t__ pwrc_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 scalar_t__ PWRC_INT_STATUS ; 
 int /*<<< orphan*/  PWRC_KEY_DETECT_UP_TIME ; 
 int PWRC_ON_KEY_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sirfsoc_pwrc_drvdata *pwrcdrv = dev_id;
	u32 int_status;

	int_status = FUNC4(pwrcdrv->pwrc_base +
							PWRC_INT_STATUS);
	FUNC5(int_status & ~PWRC_ON_KEY_BIT,
				 pwrcdrv->pwrc_base + PWRC_INT_STATUS);

	FUNC0(pwrcdrv->input, EV_KEY, KEY_POWER, 1);
	FUNC1(pwrcdrv->input);
	FUNC3(&pwrcdrv->work,
			      FUNC2(PWRC_KEY_DETECT_UP_TIME));

	return IRQ_HANDLED;
}