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
typedef  int /*<<< orphan*/  u16 ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct dln2_adc {int /*<<< orphan*/  trig; } ;

/* Variables and functions */
 struct dln2_adc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static void FUNC3(struct platform_device *pdev, u16 echo,
			   const void *data, int len)
{
	struct iio_dev *indio_dev = FUNC2(pdev);
	struct dln2_adc *dln2 = FUNC0(indio_dev);

	/* Called via URB completion handler */
	FUNC1(dln2->trig);
}