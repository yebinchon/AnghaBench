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
typedef  int /*<<< orphan*/  u32 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct adf4371_state {int /*<<< orphan*/  regmap; TYPE_1__* spi; } ;
typedef  int ssize_t ;
struct TYPE_4__ {unsigned int reg; unsigned int bit; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ADF4371_CHANNEL_NAME 130 
#define  ADF4371_FREQ 129 
#define  ADF4371_POWER_DOWN 128 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int EBUSY ; 
 int EINVAL ; 
 char** adf4371_ch_names ; 
 unsigned long long FUNC2 (struct adf4371_state*,size_t) ; 
 TYPE_2__* adf4371_pwrdown_ch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct adf4371_state* FUNC4 (struct iio_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC6 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC7(struct iio_dev *indio_dev,
			    uintptr_t private,
			    const struct iio_chan_spec *chan,
			    char *buf)
{
	struct adf4371_state *st = FUNC4(indio_dev);
	unsigned long long val = 0;
	unsigned int readval, reg, bit;
	int ret;

	switch ((u32)private) {
	case ADF4371_FREQ:
		val = FUNC2(st, chan->channel);
		ret = FUNC5(st->regmap, FUNC0(0x7C), &readval);
		if (ret < 0)
			break;

		if (readval == 0x00) {
			FUNC3(&st->spi->dev, "PLL un-locked\n");
			ret = -EBUSY;
		}
		break;
	case ADF4371_POWER_DOWN:
		reg = adf4371_pwrdown_ch[chan->channel].reg;
		bit = adf4371_pwrdown_ch[chan->channel].bit;

		ret = FUNC5(st->regmap, reg, &readval);
		if (ret < 0)
			break;

		val = !(readval & FUNC1(bit));
		break;
	case ADF4371_CHANNEL_NAME:
		return FUNC6(buf, "%s\n", adf4371_ch_names[chan->channel]);
	default:
		ret = -EINVAL;
		val = 0;
		break;
	}

	return ret < 0 ? ret : FUNC6(buf, "%llu\n", val);
}