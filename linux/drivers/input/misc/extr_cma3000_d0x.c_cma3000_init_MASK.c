#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;
struct device {int dummy; } ;
struct cma3000_platform_data {scalar_t__ mode; int g_range; int irqflags; int /*<<< orphan*/  fuzz_z; int /*<<< orphan*/  fuzz_y; int /*<<< orphan*/  fuzz_x; } ;
struct cma3000_bus_ops {int /*<<< orphan*/  bustype; } ;
struct cma3000_accl_data {int irq; scalar_t__ mode; int g_range; struct input_dev* input_dev; int /*<<< orphan*/  mutex; struct cma3000_platform_data const* pdata; struct cma3000_bus_ops const* bus_ops; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int FUNC0 (struct cma3000_accl_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CMA3000_REVID ; 
 scalar_t__ CMAMODE_MOTDET ; 
 scalar_t__ CMAMODE_POFF ; 
 int CMARANGE_2G ; 
 int CMARANGE_8G ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct cma3000_accl_data* FUNC1 (int) ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cma3000_close ; 
 int /*<<< orphan*/  cma3000_open ; 
 int FUNC3 (struct cma3000_accl_data*) ; 
 int /*<<< orphan*/  cma3000_thread_irq ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct cma3000_platform_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct cma3000_accl_data*) ; 
 struct input_dev* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*) ; 
 int FUNC11 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*,struct cma3000_accl_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct cma3000_accl_data*) ; 
 struct cma3000_accl_data* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct cma3000_accl_data*) ; 

struct cma3000_accl_data *FUNC19(struct device *dev, int irq,
				       const struct cma3000_bus_ops *bops)
{
	const struct cma3000_platform_data *pdata = FUNC5(dev);
	struct cma3000_accl_data *data;
	struct input_dev *input_dev;
	int rev;
	int error;

	if (!pdata) {
		FUNC4(dev, "platform data not found\n");
		error = -EINVAL;
		goto err_out;
	}


	/* if no IRQ return error */
	if (irq == 0) {
		error = -EINVAL;
		goto err_out;
	}

	data = FUNC15(sizeof(struct cma3000_accl_data), GFP_KERNEL);
	input_dev = FUNC9();
	if (!data || !input_dev) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	data->dev = dev;
	data->input_dev = input_dev;
	data->bus_ops = bops;
	data->pdata = pdata;
	data->irq = irq;
	FUNC16(&data->mutex);

	data->mode = pdata->mode;
	if (data->mode > CMAMODE_POFF) {
		data->mode = CMAMODE_MOTDET;
		FUNC7(dev,
			 "Invalid mode specified, assuming Motion Detect\n");
	}

	data->g_range = pdata->g_range;
	if (data->g_range != CMARANGE_2G && data->g_range != CMARANGE_8G) {
		FUNC6(dev,
			 "Invalid G range specified, assuming 8G\n");
		data->g_range = CMARANGE_8G;
	}

	input_dev->name = "cma3000-accelerometer";
	input_dev->id.bustype = bops->bustype;
	input_dev->open = cma3000_open;
	input_dev->close = cma3000_close;

	 FUNC2(EV_ABS, input_dev->evbit);

	FUNC12(input_dev, ABS_X,
			-data->g_range, data->g_range, pdata->fuzz_x, 0);
	FUNC12(input_dev, ABS_Y,
			-data->g_range, data->g_range, pdata->fuzz_y, 0);
	FUNC12(input_dev, ABS_Z,
			-data->g_range, data->g_range, pdata->fuzz_z, 0);
	FUNC12(input_dev, ABS_MISC, 0, 1, 0, 0);

	FUNC13(input_dev, data);

	error = FUNC3(data);
	if (error)
		goto err_free_mem;

	rev = FUNC0(data, CMA3000_REVID, "Revid");
	if (rev < 0) {
		error = rev;
		goto err_free_mem;
	}

	FUNC17("CMA3000 Accelerometer: Revision %x\n", rev);

	error = FUNC18(irq, NULL, cma3000_thread_irq,
				     pdata->irqflags | IRQF_ONESHOT,
				     "cma3000_d0x", data);
	if (error) {
		FUNC4(dev, "request_threaded_irq failed\n");
		goto err_free_mem;
	}

	error = FUNC11(data->input_dev);
	if (error) {
		FUNC4(dev, "Unable to register input device\n");
		goto err_free_irq;
	}

	return data;

err_free_irq:
	FUNC8(irq, data);
err_free_mem:
	FUNC10(input_dev);
	FUNC14(data);
err_out:
	return FUNC1(error);
}