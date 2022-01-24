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
struct gpio_keys_drvdata {int /*<<< orphan*/  disable_lock; struct gpio_button_data* data; TYPE_1__* pdata; int /*<<< orphan*/  input; } ;
struct gpio_button_data {int /*<<< orphan*/ * code; TYPE_2__* button; } ;
typedef  int ssize_t ;
struct TYPE_4__ {unsigned int type; int /*<<< orphan*/  can_disable; } ;
struct TYPE_3__ {int nbuttons; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int FUNC1 (char const*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned long const*,int) ; 
 unsigned long* FUNC3 (int,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_button_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_button_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC11(struct gpio_keys_drvdata *ddata,
					   const char *buf, unsigned int type)
{
	int n_events = FUNC5(type);
	const unsigned long *bitmap = FUNC4(ddata->input, type);
	unsigned long *bits;
	ssize_t error;
	int i;

	bits = FUNC3(n_events, GFP_KERNEL);
	if (!bits)
		return -ENOMEM;

	error = FUNC1(buf, bits, n_events);
	if (error)
		goto out;

	/* First validate */
	if (!FUNC2(bits, bitmap, n_events)) {
		error = -EINVAL;
		goto out;
	}

	for (i = 0; i < ddata->pdata->nbuttons; i++) {
		struct gpio_button_data *bdata = &ddata->data[i];

		if (bdata->button->type != type)
			continue;

		if (FUNC10(*bdata->code, bits) &&
		    !bdata->button->can_disable) {
			error = -EINVAL;
			goto out;
		}
	}

	FUNC8(&ddata->disable_lock);

	for (i = 0; i < ddata->pdata->nbuttons; i++) {
		struct gpio_button_data *bdata = &ddata->data[i];

		if (bdata->button->type != type)
			continue;

		if (FUNC10(*bdata->code, bits))
			FUNC6(bdata);
		else
			FUNC7(bdata);
	}

	FUNC9(&ddata->disable_lock);

out:
	FUNC0(bits);
	return error;
}