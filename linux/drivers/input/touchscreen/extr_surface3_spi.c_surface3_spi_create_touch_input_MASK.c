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
struct surface3_ts_data {TYPE_2__* spi; struct input_dev* input_dev; } ;
struct TYPE_3__ {int vendor; int product; int version; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; TYPE_1__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MINOR ; 
 int /*<<< orphan*/  BUS_SPI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct input_dev* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct surface3_ts_data *data)
{
	struct input_dev *input;
	int error;

	input = FUNC1(&data->spi->dev);
	if (!input)
		return -ENOMEM;

	data->input_dev = input;

	FUNC5(input, ABS_MT_POSITION_X, 0, 9600, 0, 0);
	FUNC2(input, ABS_MT_POSITION_X, 40);
	FUNC5(input, ABS_MT_POSITION_Y, 0, 7200, 0, 0);
	FUNC2(input, ABS_MT_POSITION_Y, 48);
	FUNC5(input, ABS_MT_WIDTH_MAJOR, 0, 1024, 0, 0);
	FUNC5(input, ABS_MT_WIDTH_MINOR, 0, 1024, 0, 0);
	FUNC3(input, 10, INPUT_MT_DIRECT);

	input->name = "Surface3 SPI Capacitive TouchScreen";
	input->phys = "input/ts";
	input->id.bustype = BUS_SPI;
	input->id.vendor = 0x045e;	/* Microsoft */
	input->id.product = 0x0001;
	input->id.version = 0x0000;

	error = FUNC4(input);
	if (error) {
		FUNC0(&data->spi->dev,
			"Failed to register input device: %d", error);
		return error;
	}

	return 0;
}