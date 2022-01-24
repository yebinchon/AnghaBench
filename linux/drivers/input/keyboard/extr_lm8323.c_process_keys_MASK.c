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
typedef  size_t u8 ;
struct lm8323_chip {int keys_down; unsigned short* keymap; int /*<<< orphan*/  active_time; int /*<<< orphan*/  idev; scalar_t__ kp_enabled; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  LM8323_CMD_READ_FIFO ; 
 int /*<<< orphan*/  LM8323_FIFO_LEN ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (size_t) ; 
 int FUNC6 (struct lm8323_chip*,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lm8323_chip*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (size_t) ; 

__attribute__((used)) static void FUNC9(struct lm8323_chip *lm)
{
	u8 event;
	u8 key_fifo[LM8323_FIFO_LEN + 1];
	int old_keys_down = lm->keys_down;
	int ret;
	int i = 0;

	/*
	 * Read all key events from the FIFO at once. Next READ_FIFO clears the
	 * FIFO even if we didn't read all events previously.
	 */
	ret = FUNC6(lm, LM8323_CMD_READ_FIFO, key_fifo, LM8323_FIFO_LEN);

	if (ret < 0) {
		FUNC0(&lm->client->dev, "Failed reading fifo \n");
		return;
	}
	key_fifo[ret] = 0;

	while ((event = key_fifo[i++])) {
		u8 key = FUNC8(event);
		int isdown = FUNC5(event);
		unsigned short keycode = lm->keymap[key];

		FUNC1(&lm->client->dev, "key 0x%02x %s\n",
			 key, isdown ? "down" : "up");

		if (lm->kp_enabled) {
			FUNC2(lm->idev, EV_MSC, MSC_SCAN, key);
			FUNC3(lm->idev, keycode, isdown);
			FUNC4(lm->idev);
		}

		if (isdown)
			lm->keys_down++;
		else
			lm->keys_down--;
	}

	/*
	 * Errata: We need to ensure that the chip never enters halt mode
	 * during a keypress, so set active time to 0.  When it's released,
	 * we can enter halt again, so set the active time back to normal.
	 */
	if (!old_keys_down && lm->keys_down)
		FUNC7(lm, 0);
	if (old_keys_down && !lm->keys_down)
		FUNC7(lm, lm->active_time);
}