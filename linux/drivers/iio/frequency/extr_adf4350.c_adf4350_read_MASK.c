#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct iio_chan_spec {int dummy; } ;
struct adf4350_state {int r0_int; int r1_mod; int r0_fract; int r4_rf_div_sel; unsigned long long clkin; unsigned long long chspc; int* regs; int /*<<< orphan*/  clk; TYPE_2__* spi; TYPE_1__* pdata; int /*<<< orphan*/  fpfd; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  gpio_lock_detect; } ;

/* Variables and functions */
#define  ADF4350_FREQ 131 
#define  ADF4350_FREQ_REFIN 130 
#define  ADF4350_FREQ_RESOLUTION 129 
#define  ADF4350_PWRDOWN 128 
 size_t ADF4350_REG2 ; 
 int ADF4350_REG2_POWER_DOWN_EN ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct adf4350_state* FUNC5 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,char*,unsigned long long) ; 

__attribute__((used)) static ssize_t FUNC9(struct iio_dev *indio_dev,
				   uintptr_t private,
				   const struct iio_chan_spec *chan,
				   char *buf)
{
	struct adf4350_state *st = FUNC5(indio_dev);
	unsigned long long val;
	int ret = 0;

	FUNC6(&indio_dev->mlock);
	switch ((u32)private) {
	case ADF4350_FREQ:
		val = (u64)((st->r0_int * st->r1_mod) + st->r0_fract) *
			(u64)st->fpfd;
		FUNC2(val, st->r1_mod * (1 << st->r4_rf_div_sel));
		/* PLL unlocked? return error */
		if (FUNC4(st->pdata->gpio_lock_detect))
			if (!FUNC3(st->pdata->gpio_lock_detect)) {
				FUNC1(&st->spi->dev, "PLL un-locked\n");
				ret = -EBUSY;
			}
		break;
	case ADF4350_FREQ_REFIN:
		if (st->clk)
			st->clkin = FUNC0(st->clk);

		val = st->clkin;
		break;
	case ADF4350_FREQ_RESOLUTION:
		val = st->chspc;
		break;
	case ADF4350_PWRDOWN:
		val = !!(st->regs[ADF4350_REG2] & ADF4350_REG2_POWER_DOWN_EN);
		break;
	default:
		ret = -EINVAL;
		val = 0;
	}
	FUNC7(&indio_dev->mlock);

	return ret < 0 ? ret : FUNC8(buf, "%llu\n", val);
}