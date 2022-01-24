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
typedef  int u32 ;
struct nvmem_cell {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvmem_cell*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int*,int) ; 
 struct nvmem_cell* FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmem_cell*) ; 
 scalar_t__ FUNC4 (struct nvmem_cell*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct nvmem_cell *cell;
	u32 bin, val;

	cell = FUNC2(dev, "speed_bin");

	/* If a nvmem cell isn't defined, nothing to do */
	if (FUNC0(cell))
		return;

	bin = *((u32 *) FUNC4(cell, NULL));
	FUNC3(cell);

	val = (1 << bin);

	FUNC1(dev, &val, 1);
}