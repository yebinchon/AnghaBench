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
typedef  size_t uint32_t ;
struct gpio_service {struct gpio_service** busyness; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 size_t GPIO_ID_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_service*) ; 

void FUNC2(
	struct gpio_service **ptr)
{
	if (!ptr || !*ptr) {
		FUNC0();
		return;
	}

	/* free business storage */
	{
		uint32_t index_of_id = 0;

		do {
			FUNC1((*ptr)->busyness[index_of_id]);

			++index_of_id;
		} while (index_of_id < GPIO_ID_COUNT);
	}

	FUNC1(*ptr);

	*ptr = NULL;
}