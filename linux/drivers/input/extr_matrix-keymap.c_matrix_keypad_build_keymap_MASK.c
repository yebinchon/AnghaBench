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
struct matrix_keymap_data {int keymap_size; unsigned int* keymap; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {unsigned short* keycode; int keycodesize; size_t keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned short* FUNC4 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC7 (char const*,unsigned int,unsigned int,struct input_dev*) ; 

int FUNC8(const struct matrix_keymap_data *keymap_data,
			       const char *keymap_name,
			       unsigned int rows, unsigned int cols,
			       unsigned short *keymap,
			       struct input_dev *input_dev)
{
	unsigned int row_shift = FUNC5(cols);
	size_t max_keys = rows << row_shift;
	int i;
	int error;

	if (FUNC0(!input_dev->dev.parent))
		return -EINVAL;

	if (!keymap) {
		keymap = FUNC4(input_dev->dev.parent,
				      max_keys, sizeof(*keymap),
				      GFP_KERNEL);
		if (!keymap) {
			FUNC3(input_dev->dev.parent,
				"Unable to allocate memory for keymap");
			return -ENOMEM;
		}
	}

	input_dev->keycode = keymap;
	input_dev->keycodesize = sizeof(*keymap);
	input_dev->keycodemax = max_keys;

	FUNC2(EV_KEY, input_dev->evbit);

	if (keymap_data) {
		for (i = 0; i < keymap_data->keymap_size; i++) {
			unsigned int key = keymap_data->keymap[i];

			if (!FUNC6(input_dev, rows, cols,
						   row_shift, key))
				return -EINVAL;
		}
	} else {
		error = FUNC7(keymap_name, rows, cols,
						   input_dev);
		if (error)
			return error;
	}

	FUNC1(KEY_RESERVED, input_dev->keybit);

	return 0;
}