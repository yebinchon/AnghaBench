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
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct input_dev *input, int fingers)
{
	FUNC0(input, BTN_TOOL_FINGER, fingers == 1);
	FUNC0(input, BTN_TOOL_DOUBLETAP, fingers == 2);
	FUNC0(input, BTN_TOOL_TRIPLETAP, fingers > 2);
}