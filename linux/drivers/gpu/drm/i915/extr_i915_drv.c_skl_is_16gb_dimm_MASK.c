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
struct dram_dimm_info {int size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dram_dimm_info const*) ; 

__attribute__((used)) static bool
FUNC1(const struct dram_dimm_info *dimm)
{
	/* Convert total GB to Gb per DRAM device */
	return 8 * dimm->size / (FUNC0(dimm) ?: 1) == 16;
}