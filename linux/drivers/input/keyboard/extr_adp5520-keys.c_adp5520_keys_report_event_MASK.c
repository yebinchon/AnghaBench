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
struct adp5520_keys {int /*<<< orphan*/  input; int /*<<< orphan*/ * keycode; } ;

/* Variables and functions */
 int ADP5520_MAXKEYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct adp5520_keys *dev,
					unsigned short keymask, int value)
{
	int i;

	for (i = 0; i < ADP5520_MAXKEYS; i++)
		if (keymask & (1 << i))
			FUNC0(dev->input, dev->keycode[i], value);

	FUNC1(dev->input);
}