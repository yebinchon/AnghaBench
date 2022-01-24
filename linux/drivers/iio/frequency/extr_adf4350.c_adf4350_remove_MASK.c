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
struct spi_device {int dummy; } ;
struct regulator {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adf4350_state {scalar_t__ clk; int /*<<< orphan*/ * regs; struct regulator* reg; } ;

/* Variables and functions */
 size_t ADF4350_REG2 ; 
 int /*<<< orphan*/  ADF4350_REG2_POWER_DOWN_EN ; 
 int /*<<< orphan*/  FUNC0 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC1 (struct adf4350_state*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct adf4350_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator*) ; 
 struct iio_dev* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct iio_dev *indio_dev = FUNC6(spi);
	struct adf4350_state *st = FUNC4(indio_dev);
	struct regulator *reg = st->reg;

	st->regs[ADF4350_REG2] |= ADF4350_REG2_POWER_DOWN_EN;
	FUNC1(st);

	FUNC3(indio_dev);

	if (st->clk)
		FUNC2(st->clk);

	if (!FUNC0(reg))
		FUNC5(reg);

	return 0;
}