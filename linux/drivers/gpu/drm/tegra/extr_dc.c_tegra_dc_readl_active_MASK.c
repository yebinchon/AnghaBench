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
struct tegra_dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_STATE_ACCESS ; 
 int /*<<< orphan*/  READ_MUX ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dc*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_dc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct tegra_dc *dc, unsigned long offset)
{
	u32 value;

	FUNC1(dc, READ_MUX, DC_CMD_STATE_ACCESS);
	value = FUNC0(dc, offset);
	FUNC1(dc, 0, DC_CMD_STATE_ACCESS);

	return value;
}