#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_sensors_platform_data {scalar_t__ open_drain; } ;
struct st_lsm6dsx_hw {TYPE_1__** iio_devs; TYPE_2__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  regmap; } ;
struct iio_buffer {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {scalar_t__ platform_data; struct device_node* of_node; } ;
struct TYPE_6__ {int /*<<< orphan*/ * setup_ops; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INDIO_BUFFER_SOFTWARE ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
#define  IRQF_TRIGGER_FALLING 131 
#define  IRQF_TRIGGER_HIGH 130 
#define  IRQF_TRIGGER_LOW 129 
#define  IRQF_TRIGGER_RISING 128 
 int ST_LSM6DSX_ID_MAX ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_HLACTIVE_ADDR ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_HLACTIVE_MASK ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_PP_OD_ADDR ; 
 int /*<<< orphan*/  ST_LSM6DSX_REG_PP_OD_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,unsigned long) ; 
 struct iio_buffer* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,char*,struct st_lsm6dsx_hw*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct iio_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_lsm6dsx_buffer_ops ; 
 int /*<<< orphan*/  st_lsm6dsx_handler_irq ; 
 int /*<<< orphan*/  st_lsm6dsx_handler_thread ; 

int FUNC10(struct st_lsm6dsx_hw *hw)
{
	struct device_node *np = hw->dev->of_node;
	struct st_sensors_platform_data *pdata;
	struct iio_buffer *buffer;
	unsigned long irq_type;
	bool irq_active_low;
	int i, err;

	irq_type = FUNC7(FUNC6(hw->irq));

	switch (irq_type) {
	case IRQF_TRIGGER_HIGH:
	case IRQF_TRIGGER_RISING:
		irq_active_low = false;
		break;
	case IRQF_TRIGGER_LOW:
	case IRQF_TRIGGER_FALLING:
		irq_active_low = true;
		break;
	default:
		FUNC2(hw->dev, "mode %lx unsupported\n", irq_type);
		return -EINVAL;
	}

	err = FUNC9(hw->regmap, ST_LSM6DSX_REG_HLACTIVE_ADDR,
				 ST_LSM6DSX_REG_HLACTIVE_MASK,
				 FUNC0(ST_LSM6DSX_REG_HLACTIVE_MASK,
					    irq_active_low));
	if (err < 0)
		return err;

	pdata = (struct st_sensors_platform_data *)hw->dev->platform_data;
	if ((np && FUNC8(np, "drive-open-drain")) ||
	    (pdata && pdata->open_drain)) {
		err = FUNC9(hw->regmap, ST_LSM6DSX_REG_PP_OD_ADDR,
					 ST_LSM6DSX_REG_PP_OD_MASK,
					 FUNC0(ST_LSM6DSX_REG_PP_OD_MASK,
						    1));
		if (err < 0)
			return err;

		irq_type |= IRQF_SHARED;
	}

	err = FUNC4(hw->dev, hw->irq,
					st_lsm6dsx_handler_irq,
					st_lsm6dsx_handler_thread,
					irq_type | IRQF_ONESHOT,
					"lsm6dsx", hw);
	if (err) {
		FUNC1(hw->dev, "failed to request trigger irq %d\n",
			hw->irq);
		return err;
	}

	for (i = 0; i < ST_LSM6DSX_ID_MAX; i++) {
		if (!hw->iio_devs[i])
			continue;

		buffer = FUNC3(hw->dev);
		if (!buffer)
			return -ENOMEM;

		FUNC5(hw->iio_devs[i], buffer);
		hw->iio_devs[i]->modes |= INDIO_BUFFER_SOFTWARE;
		hw->iio_devs[i]->setup_ops = &st_lsm6dsx_buffer_ops;
	}

	return 0;
}