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
struct gpio_descs {int ndescs; int /*<<< orphan*/ * desc; } ;
struct gpio_decoder {int /*<<< orphan*/  dev; struct gpio_descs* input_gpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_decoder *decoder)
{
	struct gpio_descs *gpios = decoder->input_gpios;
	unsigned int ret = 0;
	int i, val;

	for (i = 0; i < gpios->ndescs; i++) {
		val = FUNC2(gpios->desc[i]);
		if (val < 0) {
			FUNC1(decoder->dev,
				"Error reading gpio %d: %d\n",
				FUNC0(gpios->desc[i]), val);
			return val;
		}

		val = !!val;
		ret = (ret << 1) | val;
	}

	return ret;
}