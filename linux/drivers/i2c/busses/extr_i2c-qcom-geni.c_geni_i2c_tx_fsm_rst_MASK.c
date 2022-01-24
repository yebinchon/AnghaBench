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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct geni_i2c_dev {TYPE_1__ se; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 unsigned long RST_TIMEOUT ; 
 scalar_t__ SE_DMA_TX_FSM_RST ; 
 scalar_t__ SE_DMA_TX_IRQ_STAT ; 
 int TX_RESET_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct geni_i2c_dev *gi2c)
{
	u32 val;
	unsigned long time_left = RST_TIMEOUT;

	FUNC3(1, gi2c->se.base + SE_DMA_TX_FSM_RST);
	do {
		time_left = FUNC2(&gi2c->done, time_left);
		val = FUNC1(gi2c->se.base + SE_DMA_TX_IRQ_STAT);
	} while (!(val & TX_RESET_DONE) && time_left);

	if (!(val & TX_RESET_DONE))
		FUNC0(gi2c->se.dev, "Timeout resetting TX_FSM\n");
}