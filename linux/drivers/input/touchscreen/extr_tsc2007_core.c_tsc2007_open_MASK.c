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
struct tsc2007 {int stopped; int /*<<< orphan*/  irq; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWRDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tsc2007* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct tsc2007*) ; 
 int FUNC4 (struct tsc2007*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct input_dev *input_dev)
{
	struct tsc2007 *ts = FUNC1(input_dev);
	int err;

	ts->stopped = false;
	FUNC2();

	FUNC0(ts->irq);

	/* Prepare for touch readings - power down ADC and enable PENIRQ */
	err = FUNC4(ts, PWRDOWN);
	if (err < 0) {
		FUNC3(ts);
		return err;
	}

	return 0;
}