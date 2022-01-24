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
struct sun4i_ts_data {scalar_t__ base; scalar_t__ input; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ TP_INT_FIFOC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sun4i_ts_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct sun4i_ts_data *ts = FUNC1(pdev);

	/* Explicit unregister to avoid open/close changing the imask later */
	if (ts->input)
		FUNC0(ts->input);

	/* Deactivate all IRQs */
	FUNC2(0, ts->base + TP_INT_FIFOC);

	return 0;
}