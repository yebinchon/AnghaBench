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
struct dram_dimm_info {int size; int /*<<< orphan*/  ranks; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dram_dimm_info*) ; 

__attribute__((used)) static void FUNC4(struct dram_dimm_info *dimm,
			      u32 val)
{
	dimm->width = FUNC2(val);
	dimm->ranks = FUNC0(val);

	/*
	 * Size in register is Gb per DRAM device. Convert to total
	 * GB to match the way we report this for non-LP platforms.
	 */
	dimm->size = FUNC1(val) * FUNC3(dimm) / 8;
}