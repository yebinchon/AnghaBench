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
typedef  scalar_t__ u32 ;
struct mxs_lradc_adc {scalar_t__ const base; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LRADC_DELAY_KICK ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ STMP_OFFSET_REG_SET ; 
 struct mxs_lradc_adc* FUNC1 (struct iio_dev*) ; 
 struct iio_dev* FUNC2 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__ const) ; 

__attribute__((used)) static int FUNC4(struct iio_trigger *trig, bool state)
{
	struct iio_dev *iio = FUNC2(trig);
	struct mxs_lradc_adc *adc = FUNC1(iio);
	const u32 st = state ? STMP_OFFSET_REG_SET : STMP_OFFSET_REG_CLR;

	FUNC3(LRADC_DELAY_KICK, adc->base + (FUNC0(0) + st));

	return 0;
}