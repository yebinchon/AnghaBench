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
typedef  int /*<<< orphan*/  u32 ;
struct rot_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ROT_CONFIG ; 
 int /*<<< orphan*/  ROT_CONFIG_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rot_context *rot, bool enable)
{
	u32 val = FUNC0(ROT_CONFIG);

	if (enable == true)
		val |= ROT_CONFIG_IRQ;
	else
		val &= ~ROT_CONFIG_IRQ;

	FUNC1(val, ROT_CONFIG);
}