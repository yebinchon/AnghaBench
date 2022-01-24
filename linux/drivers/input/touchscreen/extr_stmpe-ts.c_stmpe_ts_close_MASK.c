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
struct stmpe_touch {int /*<<< orphan*/  stmpe; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMPE_REG_TSC_CTRL ; 
 int /*<<< orphan*/  STMPE_TSC_CTRL_TSC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct stmpe_touch* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct stmpe_touch *ts = FUNC1(dev);

	FUNC0(&ts->work);

	FUNC2(ts->stmpe, STMPE_REG_TSC_CTRL,
			STMPE_TSC_CTRL_TSC_EN, 0);
}