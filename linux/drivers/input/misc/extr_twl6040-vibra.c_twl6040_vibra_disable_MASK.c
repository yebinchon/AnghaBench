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
struct vibra_info {int enabled; int /*<<< orphan*/  supplies; struct twl6040* twl6040; } ;
struct twl6040 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLL ; 
 int /*<<< orphan*/  TWL6040_REG_VIBCTLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct twl6040*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct twl6040*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct vibra_info *info)
{
	struct twl6040 *twl6040 = info->twl6040;

	FUNC3(twl6040, TWL6040_REG_VIBCTLL, 0x00);
	FUNC3(twl6040, TWL6040_REG_VIBCTLR, 0x00);
	FUNC2(info->twl6040, 0);

	FUNC1(FUNC0(info->supplies), info->supplies);

	info->enabled = false;
}