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
struct iio_trigger {int /*<<< orphan*/  name; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int jextsel; scalar_t__ name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct iio_trigger*) ; 
 scalar_t__ FUNC1 (struct iio_trigger*) ; 
 TYPE_1__* stm32_dfsdm_trigs ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev,
				   struct iio_trigger *trig)
{
	int i;

	/* lookup triggers registered by stm32 timer trigger driver */
	for (i = 0; stm32_dfsdm_trigs[i].name; i++) {
		/**
		 * Checking both stm32 timer trigger type and trig name
		 * should be safe against arbitrary trigger names.
		 */
		if ((FUNC1(trig) ||
		     FUNC0(trig)) &&
		    !FUNC2(stm32_dfsdm_trigs[i].name, trig->name)) {
			return stm32_dfsdm_trigs[i].jextsel;
		}
	}

	return -EINVAL;
}