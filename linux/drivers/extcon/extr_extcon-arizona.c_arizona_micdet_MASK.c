#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct arizona_extcon_info {TYPE_2__ micd_detect_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  detecting; TYPE_2__ micd_timeout_work; struct arizona* arizona; } ;
struct TYPE_4__ {int micd_detect_debounce; } ;
struct arizona {TYPE_1__ pdata; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct arizona_extcon_info *info = data;
	struct arizona *arizona = info->arizona;
	int debounce = arizona->pdata.micd_detect_debounce;

	FUNC1(&info->micd_detect_work);
	FUNC1(&info->micd_timeout_work);

	FUNC3(&info->lock);
	if (!info->detecting)
		debounce = 0;
	FUNC4(&info->lock);

	if (debounce)
		FUNC5(system_power_efficient_wq,
				   &info->micd_detect_work,
				   FUNC2(debounce));
	else
		FUNC0(&info->micd_detect_work.work);

	return IRQ_HANDLED;
}