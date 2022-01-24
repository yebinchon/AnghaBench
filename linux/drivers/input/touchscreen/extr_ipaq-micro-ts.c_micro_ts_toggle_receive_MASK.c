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
struct touchscreen_data {struct ipaq_micro* micro; } ;
struct ipaq_micro {int /*<<< orphan*/  lock; struct touchscreen_data* ts_data; int /*<<< orphan*/ * ts; } ;

/* Variables and functions */
 int /*<<< orphan*/ * micro_ts_receive ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct touchscreen_data *ts, bool enable)
{
	struct ipaq_micro *micro = ts->micro;

	FUNC0(&micro->lock);

	if (enable) {
		micro->ts = micro_ts_receive;
		micro->ts_data = ts;
	} else {
		micro->ts = NULL;
		micro->ts_data = NULL;
	}

	FUNC1(&ts->micro->lock);
}