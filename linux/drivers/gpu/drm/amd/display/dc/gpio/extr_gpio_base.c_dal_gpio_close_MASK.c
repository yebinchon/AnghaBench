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
struct gpio {int /*<<< orphan*/  mode; int /*<<< orphan*/  pin; int /*<<< orphan*/  service; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(
	struct gpio *gpio)
{
	if (!gpio)
		return;

	FUNC0(gpio->service, &gpio->pin);

	gpio->mode = GPIO_MODE_UNKNOWN;
}