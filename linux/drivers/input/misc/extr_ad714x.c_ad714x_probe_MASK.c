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
typedef  void* u16 ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; void* bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  absbit; } ;
struct device {int dummy; } ;
struct ad714x_wheel_plat {int /*<<< orphan*/  max_coord; } ;
struct ad714x_wheel_drv {struct input_dev* input; } ;
struct ad714x_touchpad_plat {int /*<<< orphan*/  y_max_coord; int /*<<< orphan*/  x_max_coord; } ;
struct ad714x_touchpad_drv {struct input_dev* input; } ;
struct ad714x_slider_plat {int /*<<< orphan*/  max_coord; } ;
struct ad714x_slider_drv {struct input_dev* input; } ;
struct ad714x_platform_data {int slider_num; int wheel_num; int touchpad_num; int button_num; long irqflags; struct ad714x_button_plat* button; struct ad714x_touchpad_plat* touchpad; struct ad714x_wheel_plat* wheel; struct ad714x_slider_plat* slider; } ;
struct ad714x_chip {int irq; int /*<<< orphan*/  version; int /*<<< orphan*/  product; struct ad714x_platform_data* hw; int /*<<< orphan*/  mutex; struct device* dev; int /*<<< orphan*/  write; int /*<<< orphan*/  read; TYPE_3__* sw; } ;
struct ad714x_button_plat {int /*<<< orphan*/  keycode; } ;
struct ad714x_button_drv {struct input_dev* input; } ;
typedef  int /*<<< orphan*/  ad714x_write_t ;
typedef  int /*<<< orphan*/  ad714x_read_t ;
struct TYPE_6__ {struct ad714x_button_drv* button; struct ad714x_touchpad_drv* touchpad; struct ad714x_wheel_drv* wheel; struct ad714x_slider_drv* slider; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ad714x_chip* FUNC0 (int) ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ad714x_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad714x_chip*) ; 
 int /*<<< orphan*/  ad714x_interrupt_thread ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 struct ad714x_platform_data* FUNC5 (struct device*) ; 
 struct input_dev* FUNC6 (struct device*) ; 
 struct ad714x_chip* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,char*,struct ad714x_chip*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct ad714x_chip *FUNC12(struct device *dev, u16 bus_type, int irq,
				 ad714x_read_t read, ad714x_write_t write)
{
	int i;
	int error;
	struct input_dev *input;

	struct ad714x_platform_data *plat_data = FUNC5(dev);
	struct ad714x_chip *ad714x;
	void *drv_mem;
	unsigned long irqflags;

	struct ad714x_button_drv *bt_drv;
	struct ad714x_slider_drv *sd_drv;
	struct ad714x_wheel_drv *wl_drv;
	struct ad714x_touchpad_drv *tp_drv;


	if (irq <= 0) {
		FUNC4(dev, "IRQ not configured!\n");
		error = -EINVAL;
		return FUNC0(error);
	}

	if (FUNC5(dev) == NULL) {
		FUNC4(dev, "platform data for ad714x doesn't exist\n");
		error = -EINVAL;
		return FUNC0(error);
	}

	ad714x = FUNC7(dev, sizeof(*ad714x) + sizeof(*ad714x->sw) +
				   sizeof(*sd_drv) * plat_data->slider_num +
				   sizeof(*wl_drv) * plat_data->wheel_num +
				   sizeof(*tp_drv) * plat_data->touchpad_num +
				   sizeof(*bt_drv) * plat_data->button_num,
			      GFP_KERNEL);
	if (!ad714x) {
		error = -ENOMEM;
		return FUNC0(error);
	}
	ad714x->hw = plat_data;

	drv_mem = ad714x + 1;
	ad714x->sw = drv_mem;
	drv_mem += sizeof(*ad714x->sw);
	ad714x->sw->slider = sd_drv = drv_mem;
	drv_mem += sizeof(*sd_drv) * ad714x->hw->slider_num;
	ad714x->sw->wheel = wl_drv = drv_mem;
	drv_mem += sizeof(*wl_drv) * ad714x->hw->wheel_num;
	ad714x->sw->touchpad = tp_drv = drv_mem;
	drv_mem += sizeof(*tp_drv) * ad714x->hw->touchpad_num;
	ad714x->sw->button = bt_drv = drv_mem;
	drv_mem += sizeof(*bt_drv) * ad714x->hw->button_num;

	ad714x->read = read;
	ad714x->write = write;
	ad714x->irq = irq;
	ad714x->dev = dev;

	error = FUNC2(ad714x);
	if (error)
		return FUNC0(error);

	/* initialize and request sw/hw resources */

	FUNC3(ad714x);
	FUNC11(&ad714x->mutex);

	/* a slider uses one input_dev instance */
	if (ad714x->hw->slider_num > 0) {
		struct ad714x_slider_plat *sd_plat = ad714x->hw->slider;

		for (i = 0; i < ad714x->hw->slider_num; i++) {
			input = FUNC6(dev);
			if (!input)
				return FUNC0(-ENOMEM);

			FUNC1(EV_ABS, input->evbit);
			FUNC1(EV_KEY, input->evbit);
			FUNC1(ABS_X, input->absbit);
			FUNC1(BTN_TOUCH, input->keybit);
			FUNC10(input,
				ABS_X, 0, sd_plat->max_coord, 0, 0);

			input->id.bustype = bus_type;
			input->id.product = ad714x->product;
			input->id.version = ad714x->version;
			input->name = "ad714x_captouch_slider";
			input->dev.parent = dev;

			error = FUNC9(input);
			if (error)
				return FUNC0(error);

			sd_drv[i].input = input;
		}
	}

	/* a wheel uses one input_dev instance */
	if (ad714x->hw->wheel_num > 0) {
		struct ad714x_wheel_plat *wl_plat = ad714x->hw->wheel;

		for (i = 0; i < ad714x->hw->wheel_num; i++) {
			input = FUNC6(dev);
			if (!input)
				return FUNC0(-ENOMEM);

			FUNC1(EV_KEY, input->evbit);
			FUNC1(EV_ABS, input->evbit);
			FUNC1(ABS_WHEEL, input->absbit);
			FUNC1(BTN_TOUCH, input->keybit);
			FUNC10(input,
				ABS_WHEEL, 0, wl_plat->max_coord, 0, 0);

			input->id.bustype = bus_type;
			input->id.product = ad714x->product;
			input->id.version = ad714x->version;
			input->name = "ad714x_captouch_wheel";
			input->dev.parent = dev;

			error = FUNC9(input);
			if (error)
				return FUNC0(error);

			wl_drv[i].input = input;
		}
	}

	/* a touchpad uses one input_dev instance */
	if (ad714x->hw->touchpad_num > 0) {
		struct ad714x_touchpad_plat *tp_plat = ad714x->hw->touchpad;

		for (i = 0; i < ad714x->hw->touchpad_num; i++) {
			input = FUNC6(dev);
			if (!input)
				return FUNC0(-ENOMEM);

			FUNC1(EV_ABS, input->evbit);
			FUNC1(EV_KEY, input->evbit);
			FUNC1(ABS_X, input->absbit);
			FUNC1(ABS_Y, input->absbit);
			FUNC1(BTN_TOUCH, input->keybit);
			FUNC10(input,
				ABS_X, 0, tp_plat->x_max_coord, 0, 0);
			FUNC10(input,
				ABS_Y, 0, tp_plat->y_max_coord, 0, 0);

			input->id.bustype = bus_type;
			input->id.product = ad714x->product;
			input->id.version = ad714x->version;
			input->name = "ad714x_captouch_pad";
			input->dev.parent = dev;

			error = FUNC9(input);
			if (error)
				return FUNC0(error);

			tp_drv[i].input = input;
		}
	}

	/* all buttons use one input node */
	if (ad714x->hw->button_num > 0) {
		struct ad714x_button_plat *bt_plat = ad714x->hw->button;

		input = FUNC6(dev);
		if (!input) {
			error = -ENOMEM;
			return FUNC0(error);
		}

		FUNC1(EV_KEY, input->evbit);
		for (i = 0; i < ad714x->hw->button_num; i++) {
			bt_drv[i].input = input;
			FUNC1(bt_plat[i].keycode, input->keybit);
		}

		input->id.bustype = bus_type;
		input->id.product = ad714x->product;
		input->id.version = ad714x->version;
		input->name = "ad714x_captouch_button";
		input->dev.parent = dev;

		error = FUNC9(input);
		if (error)
			return FUNC0(error);
	}

	irqflags = plat_data->irqflags ?: IRQF_TRIGGER_FALLING;
	irqflags |= IRQF_ONESHOT;

	error = FUNC8(dev, ad714x->irq, NULL,
					  ad714x_interrupt_thread,
					  irqflags, "ad714x_captouch", ad714x);
	if (error) {
		FUNC4(dev, "can't allocate irq %d\n", ad714x->irq);
		return FUNC0(error);
	}

	return ad714x;
}