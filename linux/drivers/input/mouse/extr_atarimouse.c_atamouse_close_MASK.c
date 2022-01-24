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
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * atari_input_mouse_interrupt_hook ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static void FUNC1(struct input_dev *dev)
{
	FUNC0();
	atari_input_mouse_interrupt_hook = NULL;
}