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
struct gpio_keys_drvdata {struct gpio_button_data* data; TYPE_1__* pdata; } ;
struct gpio_button_data {int /*<<< orphan*/ * code; int /*<<< orphan*/  disabled; TYPE_2__* button; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {unsigned int type; } ;
struct TYPE_3__ {int nbuttons; } ;

/* Variables and functions */
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 unsigned long* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 size_t FUNC4 (char*,scalar_t__,char*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(struct gpio_keys_drvdata *ddata,
					  char *buf, unsigned int type,
					  bool only_disabled)
{
	int n_events = FUNC3(type);
	unsigned long *bits;
	ssize_t ret;
	int i;

	bits = FUNC2(n_events, GFP_KERNEL);
	if (!bits)
		return -ENOMEM;

	for (i = 0; i < ddata->pdata->nbuttons; i++) {
		struct gpio_button_data *bdata = &ddata->data[i];

		if (bdata->button->type != type)
			continue;

		if (only_disabled && !bdata->disabled)
			continue;

		FUNC0(*bdata->code, bits);
	}

	ret = FUNC4(buf, PAGE_SIZE - 1, "%*pbl", n_events, bits);
	buf[ret++] = '\n';
	buf[ret] = '\0';

	FUNC1(bits);

	return ret;
}