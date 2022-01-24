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
typedef  int u8 ;
struct lm8333 {int /*<<< orphan*/ * keycodes; TYPE_1__* client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  LM8333_FIFO_READ ; 
 int LM8333_FIFO_TRANSFER_SIZE ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct lm8333*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC5(struct lm8333 *lm8333)
{
	struct input_dev *input = lm8333->input;
	u8 keys[LM8333_FIFO_TRANSFER_SIZE];
	u8 code, pressed;
	int i, ret;

	ret = FUNC4(lm8333, LM8333_FIFO_READ,
				LM8333_FIFO_TRANSFER_SIZE, keys);
	if (ret != LM8333_FIFO_TRANSFER_SIZE) {
		FUNC0(&lm8333->client->dev,
			"Error %d while reading FIFO\n", ret);
		return;
	}

	for (i = 0; i < LM8333_FIFO_TRANSFER_SIZE && keys[i]; i++) {
		pressed = keys[i] & 0x80;
		code = keys[i] & 0x7f;

		FUNC1(input, EV_MSC, MSC_SCAN, code);
		FUNC2(input, lm8333->keycodes[code], pressed);
	}

	FUNC3(input);
}