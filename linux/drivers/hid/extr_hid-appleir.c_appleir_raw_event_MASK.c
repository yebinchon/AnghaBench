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
typedef  int u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct appleir {int prev_key_idx; int /*<<< orphan*/  key_up_timer; int /*<<< orphan*/  current_key; int /*<<< orphan*/  lock; int /*<<< orphan*/ * keymap; } ;
typedef  int /*<<< orphan*/  keyrepeat ;
typedef  int /*<<< orphan*/  keydown ;
typedef  int /*<<< orphan*/  flatbattery ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct appleir*) ; 
 int FUNC1 (int) ; 
 struct appleir* FUNC2 (struct hid_device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct appleir*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct appleir*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct hid_device *hid, struct hid_report *report,
	 u8 *data, int len)
{
	struct appleir *appleir = FUNC2(hid);
	static const u8 keydown[] = { 0x25, 0x87, 0xee };
	static const u8 keyrepeat[] = { 0x26, };
	static const u8 flatbattery[] = { 0x25, 0x87, 0xe0 };
	unsigned long flags;

	if (len != 5)
		goto out;

	if (!FUNC5(data, keydown, sizeof(keydown))) {
		int index;

		FUNC7(&appleir->lock, flags);
		/*
		 * If we already have a key down, take it up before marking
		 * this one down
		 */
		if (appleir->current_key)
			FUNC4(hid, appleir, appleir->current_key);

		/* Handle dual packet commands */
		if (appleir->prev_key_idx > 0)
			index = appleir->prev_key_idx;
		else
			index = FUNC1(data[4]);

		if (index >= 0) {
			appleir->current_key = appleir->keymap[index];

			FUNC3(hid, appleir, appleir->current_key);
			/*
			 * Remote doesn't do key up, either pull them up, in
			 * the test above, or here set a timer which pulls
			 * them up after 1/8 s
			 */
			FUNC6(&appleir->key_up_timer, jiffies + HZ / 8);
			appleir->prev_key_idx = 0;
		} else
			/* Remember key for next packet */
			appleir->prev_key_idx = -index;
		FUNC8(&appleir->lock, flags);
		goto out;
	}

	appleir->prev_key_idx = 0;

	if (!FUNC5(data, keyrepeat, sizeof(keyrepeat))) {
		FUNC3(hid, appleir, appleir->current_key);
		/*
		 * Remote doesn't do key up, either pull them up, in the test
		 * above, or here set a timer which pulls them up after 1/8 s
		 */
		FUNC6(&appleir->key_up_timer, jiffies + HZ / 8);
		goto out;
	}

	if (!FUNC5(data, flatbattery, sizeof(flatbattery))) {
		FUNC0(appleir);
		/* Fall through */
	}

out:
	/* let hidraw and hiddev handle the report */
	return 0;
}