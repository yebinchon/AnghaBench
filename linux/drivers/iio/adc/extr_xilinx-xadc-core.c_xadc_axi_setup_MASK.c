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
struct xadc {int dummy; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XADC_AXI_GIER_ENABLE ; 
 int /*<<< orphan*/  XADC_AXI_REG_GIER ; 
 int /*<<< orphan*/  XADC_AXI_REG_RESET ; 
 int /*<<< orphan*/  XADC_AXI_RESET_MAGIC ; 
 struct xadc* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct xadc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev,
	struct iio_dev *indio_dev, int irq)
{
	struct xadc *xadc = FUNC0(indio_dev);

	FUNC1(xadc, XADC_AXI_REG_RESET, XADC_AXI_RESET_MAGIC);
	FUNC1(xadc, XADC_AXI_REG_GIER, XADC_AXI_GIER_ENABLE);

	return 0;
}