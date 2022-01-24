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
struct tegra_dc {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct tegra_dc *dc, unsigned int offset)
{
	u32 value = FUNC0(dc->regs + (offset << 2));

	FUNC1(dc->dev, offset, value);

	return value;
}