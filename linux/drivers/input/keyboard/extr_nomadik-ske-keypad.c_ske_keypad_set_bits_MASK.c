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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct ske_keypad {int /*<<< orphan*/  ske_keypad_lock; scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ske_keypad *keypad, u16 addr,
		u8 mask, u8 data)
{
	u32 ret;

	FUNC1(&keypad->ske_keypad_lock);

	ret = FUNC0(keypad->reg_base + addr);
	ret &= ~mask;
	ret |= data;
	FUNC3(ret, keypad->reg_base + addr);

	FUNC2(&keypad->ske_keypad_lock);
}