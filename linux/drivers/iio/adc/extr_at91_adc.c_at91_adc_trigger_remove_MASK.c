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
struct iio_dev {int dummy; } ;
struct at91_adc_state {int trigger_number; int /*<<< orphan*/ * trig; } ;

/* Variables and functions */
 struct at91_adc_state* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iio_dev *idev)
{
	struct at91_adc_state *st = FUNC0(idev);
	int i;

	for (i = 0; i < st->trigger_number; i++) {
		FUNC2(st->trig[i]);
		FUNC1(st->trig[i]);
	}
}