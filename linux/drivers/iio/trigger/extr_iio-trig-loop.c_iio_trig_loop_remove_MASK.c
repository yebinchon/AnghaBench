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
struct iio_sw_trigger {int /*<<< orphan*/  trigger; } ;
struct iio_loop_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct iio_loop_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_loop_info*) ; 

__attribute__((used)) static int FUNC4(struct iio_sw_trigger *swt)
{
	struct iio_loop_info *trig_info;

	trig_info = FUNC1(swt->trigger);

	FUNC2(swt->trigger);
	FUNC0(swt->trigger);
	FUNC3(trig_info);

	return 0;
}