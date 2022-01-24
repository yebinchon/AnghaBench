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
struct mms114_touch {int dummy; } ;
struct mms114_data {struct input_dev* input_dev; } ;
struct input_dev {int /*<<< orphan*/  mutex; int /*<<< orphan*/  users; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MMS114_INFORMATION ; 
 int MMS114_MAX_TOUCH ; 
 int MMS114_PACKET_NUM ; 
 int /*<<< orphan*/  MMS114_PACKET_SIZE ; 
 int FUNC0 (struct mms114_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mms114_data*,struct mms114_touch*) ; 
 int FUNC4 (struct mms114_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct mms114_data *data = dev_id;
	struct input_dev *input_dev = data->input_dev;
	struct mms114_touch touch[MMS114_MAX_TOUCH];
	int packet_size;
	int touch_size;
	int index;
	int error;

	FUNC5(&input_dev->mutex);
	if (!input_dev->users) {
		FUNC6(&input_dev->mutex);
		goto out;
	}
	FUNC6(&input_dev->mutex);

	packet_size = FUNC4(data, MMS114_PACKET_SIZE);
	if (packet_size <= 0)
		goto out;

	touch_size = packet_size / MMS114_PACKET_NUM;

	error = FUNC0(data, MMS114_INFORMATION, packet_size,
			(u8 *)touch);
	if (error < 0)
		goto out;

	for (index = 0; index < touch_size; index++)
		FUNC3(data, touch + index);

	FUNC1(data->input_dev, true);
	FUNC2(data->input_dev);

out:
	return IRQ_HANDLED;
}