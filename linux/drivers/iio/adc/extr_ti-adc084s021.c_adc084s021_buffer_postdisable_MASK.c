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
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct adc084s021 {int /*<<< orphan*/  reg; TYPE_1__ spi_trans; } ;

/* Variables and functions */
 struct adc084s021* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct iio_dev *indio_dev)
{
	struct adc084s021 *adc = FUNC0(indio_dev);

	adc->spi_trans.len = 4; /* Trash + single channel */

	return FUNC1(adc->reg);
}