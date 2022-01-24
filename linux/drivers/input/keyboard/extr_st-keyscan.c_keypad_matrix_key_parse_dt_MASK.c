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
struct st_keyscan {int /*<<< orphan*/  debounce_us; int /*<<< orphan*/  n_cols; int /*<<< orphan*/  n_rows; TYPE_2__* input_dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct st_keyscan *keypad_data)
{
	struct device *dev = keypad_data->input_dev->dev.parent;
	struct device_node *np = dev->of_node;
	int error;

	error = FUNC2(dev, &keypad_data->n_rows,
					       &keypad_data->n_cols);
	if (error) {
		FUNC1(dev, "failed to parse keypad params\n");
		return error;
	}

	FUNC3(np, "st,debounce-us", &keypad_data->debounce_us);

	FUNC0(dev, "n_rows=%d n_col=%d debounce=%d\n",
		keypad_data->n_rows, keypad_data->n_cols,
		keypad_data->debounce_us);

	return 0;
}