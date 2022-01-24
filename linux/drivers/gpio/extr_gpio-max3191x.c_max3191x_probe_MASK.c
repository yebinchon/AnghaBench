#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct spi_device {int /*<<< orphan*/  modalias; struct device dev; } ;
struct TYPE_7__ {int base; int ngpio; int can_sleep; int /*<<< orphan*/  set_config; int /*<<< orphan*/  get_multiple; int /*<<< orphan*/  get; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; struct device* parent; int /*<<< orphan*/  owner; int /*<<< orphan*/  label; } ;
struct TYPE_6__ {int len; void* rx_buf; } ;
struct max3191x_chip {int nchips; int /*<<< orphan*/  lock; TYPE_3__ gpio; TYPE_2__ xfer; int /*<<< orphan*/  mesg; TYPE_4__* db1_pins; TYPE_4__* db0_pins; scalar_t__ ignore_uv; int /*<<< orphan*/  mode; TYPE_1__* modesel_pins; void* fault_pins; void* fault; void* undervolt2; void* overtemp; void* undervolt1; void* crc_error; } ;
struct TYPE_8__ {scalar_t__ ndescs; } ;
struct TYPE_5__ {int /*<<< orphan*/  info; int /*<<< orphan*/  desc; int /*<<< orphan*/  ndescs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_ASIS ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int MAX3191X_NGPIO ; 
 int /*<<< orphan*/  STATUS_BYTE_DISABLED ; 
 int /*<<< orphan*/  STATUS_BYTE_ENABLED ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,TYPE_4__*) ; 
 void* FUNC6 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct max3191x_chip* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,struct max3191x_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max3191x_direction_input ; 
 int /*<<< orphan*/  max3191x_direction_output ; 
 int /*<<< orphan*/  max3191x_get ; 
 int /*<<< orphan*/  max3191x_get_direction ; 
 int /*<<< orphan*/  max3191x_get_multiple ; 
 int /*<<< orphan*/  max3191x_set ; 
 int /*<<< orphan*/  max3191x_set_config ; 
 int /*<<< orphan*/  max3191x_set_multiple ; 
 int FUNC10 (struct max3191x_chip*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*,struct max3191x_chip*) ; 

__attribute__((used)) static int FUNC15(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct max3191x_chip *max3191x;
	int n, ret;

	max3191x = FUNC7(dev, sizeof(*max3191x), GFP_KERNEL);
	if (!max3191x)
		return -ENOMEM;
	FUNC14(spi, max3191x);

	max3191x->nchips = 1;
	FUNC3(dev, "#daisy-chained-devices",
				 &max3191x->nchips);

	n = FUNC0(max3191x->nchips);
	max3191x->crc_error   = FUNC6(dev, n, sizeof(long), GFP_KERNEL);
	max3191x->undervolt1  = FUNC6(dev, n, sizeof(long), GFP_KERNEL);
	max3191x->undervolt2  = FUNC6(dev, n, sizeof(long), GFP_KERNEL);
	max3191x->overtemp    = FUNC6(dev, n, sizeof(long), GFP_KERNEL);
	max3191x->fault       = FUNC6(dev, n, sizeof(long), GFP_KERNEL);
	max3191x->xfer.rx_buf = FUNC6(dev, max3191x->nchips,
								2, GFP_KERNEL);
	if (!max3191x->crc_error || !max3191x->undervolt1 ||
	    !max3191x->overtemp  || !max3191x->undervolt2 ||
	    !max3191x->fault     || !max3191x->xfer.rx_buf)
		return -ENOMEM;

	max3191x->modesel_pins = FUNC4(dev,
				 "maxim,modesel", GPIOD_ASIS, max3191x->nchips);
	max3191x->fault_pins   = FUNC4(dev,
				 "maxim,fault", GPIOD_IN, max3191x->nchips);
	max3191x->db0_pins     = FUNC4(dev,
				 "maxim,db0", GPIOD_OUT_LOW, max3191x->nchips);
	max3191x->db1_pins     = FUNC4(dev,
				 "maxim,db1", GPIOD_OUT_LOW, max3191x->nchips);

	max3191x->mode = FUNC2(dev, "maxim,modesel-8bit")
				 ? STATUS_BYTE_DISABLED : STATUS_BYTE_ENABLED;
	if (max3191x->modesel_pins)
		FUNC9(
				 max3191x->modesel_pins->ndescs,
				 max3191x->modesel_pins->desc,
				 max3191x->modesel_pins->info, max3191x->mode);

	max3191x->ignore_uv = FUNC2(dev,
						  "maxim,ignore-undervoltage");

	if (max3191x->db0_pins && max3191x->db1_pins &&
	    max3191x->db0_pins->ndescs != max3191x->db1_pins->ndescs) {
		FUNC1(dev, "ignoring maxim,db*-gpios: array len mismatch\n");
		FUNC5(dev, max3191x->db0_pins);
		FUNC5(dev, max3191x->db1_pins);
		max3191x->db0_pins = NULL;
		max3191x->db1_pins = NULL;
	}

	max3191x->xfer.len = max3191x->nchips * FUNC10(max3191x);
	FUNC13(&max3191x->mesg, &max3191x->xfer, 1);

	max3191x->gpio.label = spi->modalias;
	max3191x->gpio.owner = THIS_MODULE;
	max3191x->gpio.parent = dev;
	max3191x->gpio.base = -1;
	max3191x->gpio.ngpio = max3191x->nchips * MAX3191X_NGPIO;
	max3191x->gpio.can_sleep = true;

	max3191x->gpio.get_direction = max3191x_get_direction;
	max3191x->gpio.direction_input = max3191x_direction_input;
	max3191x->gpio.direction_output = max3191x_direction_output;
	max3191x->gpio.set = max3191x_set;
	max3191x->gpio.set_multiple = max3191x_set_multiple;
	max3191x->gpio.get = max3191x_get;
	max3191x->gpio.get_multiple = max3191x_get_multiple;
	max3191x->gpio.set_config = max3191x_set_config;

	FUNC12(&max3191x->lock);

	ret = FUNC8(&max3191x->gpio, max3191x);
	if (ret) {
		FUNC11(&max3191x->lock);
		return ret;
	}

	return 0;
}