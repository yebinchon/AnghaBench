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
struct hx711_data {int /*<<< orphan*/  gain_set; int /*<<< orphan*/  gpiod_dout; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hx711_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hx711_data *hx711_data)
{
	int i, ret;
	int value = 0;
	int val = FUNC0(hx711_data->gpiod_dout);

	/* we double check if it's really down */
	if (val)
		return -EIO;

	for (i = 0; i < 24; i++) {
		value <<= 1;
		ret = FUNC1(hx711_data);
		if (ret)
			value++;
	}

	value ^= 0x800000;

	for (i = 0; i < FUNC2(hx711_data->gain_set); i++)
		FUNC1(hx711_data);

	return value;
}