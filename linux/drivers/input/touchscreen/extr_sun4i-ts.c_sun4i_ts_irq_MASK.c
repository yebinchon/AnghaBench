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
struct sun4i_ts_data {scalar_t__ base; scalar_t__ input; void* temp_data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TEMP_DATA ; 
 int TEMP_DATA_PENDING ; 
 scalar_t__ TP_INT_FIFOS ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sun4i_ts_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sun4i_ts_data *ts = dev_id;
	u32 reg_val;

	reg_val  = FUNC0(ts->base + TP_INT_FIFOS);

	if (reg_val & TEMP_DATA_PENDING)
		ts->temp_data = FUNC0(ts->base + TEMP_DATA);

	if (ts->input)
		FUNC1(ts, reg_val);

	FUNC2(reg_val, ts->base + TP_INT_FIFOS);

	return IRQ_HANDLED;
}