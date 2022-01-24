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
struct iproc_adc_priv {int dummy; } ;
struct device {int dummy; } ;
struct iio_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPROC_ANALOG_CONTROL ; 
 int /*<<< orphan*/  IPROC_AUX_DATA ; 
 int /*<<< orphan*/  IPROC_CONTROLLER_STATUS ; 
 int /*<<< orphan*/  IPROC_INTERRUPT_MASK ; 
 int /*<<< orphan*/  IPROC_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  IPROC_INTERRUPT_THRES ; 
 int /*<<< orphan*/  IPROC_REGCTL1 ; 
 int /*<<< orphan*/  IPROC_REGCTL2 ; 
 int /*<<< orphan*/  IPROC_SOFT_BYPASS_CONTROL ; 
 int /*<<< orphan*/  IPROC_SOFT_BYPASS_DATA ; 
 struct iproc_adc_priv* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iproc_adc_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iio_dev *indio_dev)
{
	struct device *dev = &indio_dev->dev;
	struct iproc_adc_priv *adc_priv = FUNC0(indio_dev);

	FUNC1(dev, adc_priv, IPROC_REGCTL1);
	FUNC1(dev, adc_priv, IPROC_REGCTL2);
	FUNC1(dev, adc_priv, IPROC_INTERRUPT_THRES);
	FUNC1(dev, adc_priv, IPROC_INTERRUPT_MASK);
	FUNC1(dev, adc_priv, IPROC_INTERRUPT_STATUS);
	FUNC1(dev, adc_priv, IPROC_CONTROLLER_STATUS);
	FUNC1(dev, adc_priv, IPROC_ANALOG_CONTROL);
	FUNC1(dev, adc_priv, IPROC_AUX_DATA);
	FUNC1(dev, adc_priv, IPROC_SOFT_BYPASS_CONTROL);
	FUNC1(dev, adc_priv, IPROC_SOFT_BYPASS_DATA);
}