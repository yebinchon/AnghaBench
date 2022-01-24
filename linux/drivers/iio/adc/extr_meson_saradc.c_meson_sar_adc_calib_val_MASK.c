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
struct meson_sar_adc_priv {int calibscale; int calibbias; TYPE_1__* param; } ;
struct iio_dev {int dummy; } ;
typedef  int s64 ;
struct TYPE_2__ {int resolution; } ;

/* Variables and functions */
 int /*<<< orphan*/  MILLION ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct meson_sar_adc_priv* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC3(struct iio_dev *indio_dev, int val)
{
	struct meson_sar_adc_priv *priv = FUNC2(indio_dev);
	int tmp;

	/* use val_calib = scale * val_raw + offset calibration function */
	tmp = FUNC1((s64)val * priv->calibscale, MILLION) + priv->calibbias;

	return FUNC0(tmp, 0, (1 << priv->param->resolution) - 1);
}