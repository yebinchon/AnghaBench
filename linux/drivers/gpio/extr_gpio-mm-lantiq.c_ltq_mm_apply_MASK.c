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
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct ltq_mm {TYPE_1__ mmchip; int /*<<< orphan*/  shadow; } ;

/* Variables and functions */
 int LTQ_EBU_BUSCON ; 
 int /*<<< orphan*/  LTQ_EBU_BUSCON1 ; 
 int LTQ_EBU_WP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ebu_lock ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ltq_mm *chip)
{
	unsigned long flags;

	FUNC2(&ebu_lock, flags);
	FUNC1(LTQ_EBU_BUSCON, LTQ_EBU_BUSCON1);
	FUNC0(chip->shadow, chip->mmchip.regs);
	FUNC1(LTQ_EBU_BUSCON | LTQ_EBU_WP, LTQ_EBU_BUSCON1);
	FUNC3(&ebu_lock, flags);
}