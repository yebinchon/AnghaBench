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
struct geni_i2c_dev {TYPE_1__ se; int /*<<< orphan*/  done; int /*<<< orphan*/  lock; int /*<<< orphan*/ * cur; } ;

/* Variables and functions */
 unsigned long ABORT_TIMEOUT ; 
 int /*<<< orphan*/  GENI_TIMEOUT ; 
 int M_CMD_ABORT_EN ; 
 scalar_t__ SE_GENI_M_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct geni_i2c_dev *gi2c)
{
	u32 val;
	unsigned long time_left = ABORT_TIMEOUT;
	unsigned long flags;

	FUNC4(&gi2c->lock, flags);
	FUNC1(gi2c, GENI_TIMEOUT);
	gi2c->cur = NULL;
	FUNC2(&gi2c->se);
	FUNC5(&gi2c->lock, flags);
	do {
		time_left = FUNC6(&gi2c->done, time_left);
		val = FUNC3(gi2c->se.base + SE_GENI_M_IRQ_STATUS);
	} while (!(val & M_CMD_ABORT_EN) && time_left);

	if (!(val & M_CMD_ABORT_EN))
		FUNC0(gi2c->se.dev, "Timeout abort_m_cmd\n");
}