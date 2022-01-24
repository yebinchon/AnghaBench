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
typedef  int /*<<< orphan*/  u8 ;
struct input_dev {int dummy; } ;
struct exc3000_data {int /*<<< orphan*/  prop; int /*<<< orphan*/  timer; int /*<<< orphan*/  client; int /*<<< orphan*/ * buf; struct input_dev* input; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXC3000_LEN_FRAME ; 
 int /*<<< orphan*/  EXC3000_SLOTS_PER_FRAME ; 
 int /*<<< orphan*/  EXC3000_TIMEOUT_MS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct exc3000_data *data = dev_id;
	struct input_dev *input = data->input;
	u8 *buf = data->buf;
	int slots, total_slots;
	int error;

	error = FUNC1(data->client, buf, &total_slots);
	if (error) {
		/* Schedule a timer to release "stuck" contacts */
		FUNC6(&data->timer,
			  jiffies + FUNC7(EXC3000_TIMEOUT_MS));
		goto out;
	}

	/*
	 * We read full state successfully, no contacts will be "stuck".
	 */
	FUNC0(&data->timer);

	while (total_slots > 0) {
		slots = FUNC5(total_slots, EXC3000_SLOTS_PER_FRAME);
		FUNC2(input, &data->prop, buf + 4, slots);
		total_slots -= slots;
		buf += EXC3000_LEN_FRAME;
	}

	FUNC3(input);
	FUNC4(input);

out:
	return IRQ_HANDLED;
}