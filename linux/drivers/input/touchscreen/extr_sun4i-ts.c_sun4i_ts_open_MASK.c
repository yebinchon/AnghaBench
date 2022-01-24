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
struct sun4i_ts_data {scalar_t__ base; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ TP_INT_FIFOC ; 
 int FUNC4 (int) ; 
 struct sun4i_ts_data* FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct input_dev *dev)
{
	struct sun4i_ts_data *ts = FUNC5(dev);

	/* Flush, set trig level to 1, enable temp, data and up irqs */
	FUNC6(FUNC3(1) | FUNC0(1) | FUNC2(1) | FUNC1(1) |
		FUNC4(1), ts->base + TP_INT_FIFOC);

	return 0;
}