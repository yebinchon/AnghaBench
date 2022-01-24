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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct i2c_algo_iop3xx_data {scalar_t__ ioaddr; scalar_t__ algo_data; } ;
struct i2c_adapter {scalar_t__ ioaddr; scalar_t__ algo_data; } ;

/* Variables and functions */
 scalar_t__ CR_OFFSET ; 
 int /*<<< orphan*/  IOP3XX_I2C_IO_SIZE ; 
 unsigned long IOP3XX_ICR_ALD_IE ; 
 unsigned long IOP3XX_ICR_BERR_IE ; 
 unsigned long IOP3XX_ICR_RXFULL_IE ; 
 unsigned long IOP3XX_ICR_TXEMPTY_IE ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_iop3xx_data*) ; 
 struct i2c_algo_iop3xx_data* FUNC4 (struct platform_device*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct platform_device *pdev)
{
	struct i2c_adapter *padapter = FUNC4(pdev);
	struct i2c_algo_iop3xx_data *adapter_data =
		(struct i2c_algo_iop3xx_data *)padapter->algo_data;
	struct resource *res = FUNC5(pdev, IORESOURCE_MEM, 0);
	unsigned long cr = FUNC0(adapter_data->ioaddr + CR_OFFSET);

	/*
	 * Disable the actual HW unit
	 */
	cr &= ~(IOP3XX_ICR_ALD_IE | IOP3XX_ICR_BERR_IE |
		IOP3XX_ICR_RXFULL_IE | IOP3XX_ICR_TXEMPTY_IE);
	FUNC1(cr, adapter_data->ioaddr + CR_OFFSET);

	FUNC2(adapter_data->ioaddr);
	FUNC6(res->start, IOP3XX_I2C_IO_SIZE);
	FUNC3(adapter_data);
	FUNC3(padapter);

	return 0;
}