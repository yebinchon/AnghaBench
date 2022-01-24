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
struct xadc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; struct iio_trigger* trigger; struct iio_trigger* convst_trigger; } ;
struct iio_trigger {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned int XADC_AXI_INT_EOS ; 
 int /*<<< orphan*/  XADC_AXI_REG_IPIER ; 
 int /*<<< orphan*/  XADC_AXI_REG_IPISR ; 
 unsigned int XADC_CONF0_EC ; 
 int /*<<< orphan*/  XADC_REG_CONF1 ; 
 int FUNC0 (struct xadc*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct xadc* FUNC1 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct xadc*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct xadc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct iio_trigger *trigger, bool state)
{
	struct xadc *xadc = FUNC1(trigger);
	unsigned long flags;
	unsigned int convst;
	unsigned int val;
	int ret = 0;

	FUNC2(&xadc->mutex);

	if (state) {
		/* Only one of the two triggers can be active at the a time. */
		if (xadc->trigger != NULL) {
			ret = -EBUSY;
			goto err_out;
		} else {
			xadc->trigger = trigger;
			if (trigger == xadc->convst_trigger)
				convst = XADC_CONF0_EC;
			else
				convst = 0;
		}
		ret = FUNC0(xadc, XADC_REG_CONF1, XADC_CONF0_EC,
					convst);
		if (ret)
			goto err_out;
	} else {
		xadc->trigger = NULL;
	}

	FUNC4(&xadc->lock, flags);
	FUNC6(xadc, XADC_AXI_REG_IPIER, &val);
	FUNC7(xadc, XADC_AXI_REG_IPISR, val & XADC_AXI_INT_EOS);
	if (state)
		val |= XADC_AXI_INT_EOS;
	else
		val &= ~XADC_AXI_INT_EOS;
	FUNC7(xadc, XADC_AXI_REG_IPIER, val);
	FUNC5(&xadc->lock, flags);

err_out:
	FUNC3(&xadc->mutex);

	return ret;
}