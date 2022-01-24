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
struct st_keyscan {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct st_keyscan* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct st_keyscan*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct st_keyscan *keypad = FUNC0(dev);

	FUNC1(keypad);
}