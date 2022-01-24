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
struct pisosr_gpio {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  buffer; int /*<<< orphan*/  spi; scalar_t__ load_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct pisosr_gpio *gpio)
{
	int ret;

	FUNC1(&gpio->lock);

	if (gpio->load_gpio) {
		FUNC0(gpio->load_gpio, 1);
		FUNC4(1); /* registers load time (~10ns) */
		FUNC0(gpio->load_gpio, 0);
		FUNC4(1); /* registers recovery time (~5ns) */
	}

	ret = FUNC3(gpio->spi, gpio->buffer, gpio->buffer_size);

	FUNC2(&gpio->lock);

	return ret;
}