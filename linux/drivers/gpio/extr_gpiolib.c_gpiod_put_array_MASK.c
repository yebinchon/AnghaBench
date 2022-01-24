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
struct gpio_descs {unsigned int ndescs; int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_descs*) ; 

void FUNC2(struct gpio_descs *descs)
{
	unsigned int i;

	for (i = 0; i < descs->ndescs; i++)
		FUNC0(descs->desc[i]);

	FUNC1(descs);
}