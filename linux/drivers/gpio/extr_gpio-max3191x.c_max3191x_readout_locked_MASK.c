#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ rx_buf; } ;
struct TYPE_4__ {struct device* parent; } ;
struct max3191x_chip {int nchips; scalar_t__ mode; int /*<<< orphan*/  fault; TYPE_3__* fault_pins; int /*<<< orphan*/  ignore_uv; int /*<<< orphan*/  undervolt2; int /*<<< orphan*/  undervolt1; int /*<<< orphan*/  overtemp; int /*<<< orphan*/  crc_error; TYPE_2__ xfer; int /*<<< orphan*/  mesg; TYPE_1__ gpio; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int ndescs; struct gpio_desc** desc; } ;

/* Variables and functions */
 scalar_t__ STATUS_BYTE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct gpio_desc*) ; 
 int /*<<< orphan*/  max3191x_crc8 ; 
 int FUNC5 (struct spi_device*,int /*<<< orphan*/ *) ; 
 struct spi_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct max3191x_chip *max3191x)
{
	struct device *dev = max3191x->gpio.parent;
	struct spi_device *spi = FUNC6(dev);
	int val, i, ot = 0, uv1 = 0;

	val = FUNC5(spi, &max3191x->mesg);
	if (val) {
		FUNC2(dev, "SPI receive error %d\n", val);
		return val;
	}

	for (i = 0; i < max3191x->nchips; i++) {
		if (max3191x->mode == STATUS_BYTE_ENABLED) {
			u8 in	  = ((u8 *)max3191x->xfer.rx_buf)[i * 2];
			u8 status = ((u8 *)max3191x->xfer.rx_buf)[i * 2 + 1];

			val = (status & 0xf8) != FUNC1(max3191x_crc8, &in, 1, 0);
			FUNC0(i, max3191x->crc_error, val);
			if (val)
				FUNC2(dev,
					"chip %d: CRC error\n", i);

			ot  = (status >> 1) & 1;
			FUNC0(i, max3191x->overtemp, ot);
			if (ot)
				FUNC2(dev,
					"chip %d: overtemperature\n", i);

			if (!max3191x->ignore_uv) {
				uv1 = !((status >> 2) & 1);
				FUNC0(i, max3191x->undervolt1, uv1);
				if (uv1)
					FUNC2(dev,
						"chip %d: undervoltage\n", i);

				val = !(status & 1);
				FUNC0(i, max3191x->undervolt2, val);
				if (val && !uv1)
					FUNC3(dev,
						"chip %d: voltage warn\n", i);
			}
		}

		if (max3191x->fault_pins && !max3191x->ignore_uv) {
			/* fault pin shared by all chips or per chip */
			struct gpio_desc *fault_pin =
				(max3191x->fault_pins->ndescs == 1)
					? max3191x->fault_pins->desc[0]
					: max3191x->fault_pins->desc[i];

			val = FUNC4(fault_pin);
			if (val < 0) {
				FUNC2(dev,
					"GPIO read error %d\n", val);
				return val;
			}
			FUNC0(i, max3191x->fault, val);
			if (val && !uv1 && !ot)
				FUNC2(dev,
					"chip %d: fault\n", i);
		}
	}

	return 0;
}