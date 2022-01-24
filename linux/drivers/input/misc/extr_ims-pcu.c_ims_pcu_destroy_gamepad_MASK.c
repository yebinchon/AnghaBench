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
struct ims_pcu_gamepad {int /*<<< orphan*/  input; } ;
struct ims_pcu {struct ims_pcu_gamepad* gamepad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ims_pcu_gamepad*) ; 

__attribute__((used)) static void FUNC2(struct ims_pcu *pcu)
{
	struct ims_pcu_gamepad *gamepad = pcu->gamepad;

	FUNC0(gamepad->input);
	FUNC1(gamepad);
}