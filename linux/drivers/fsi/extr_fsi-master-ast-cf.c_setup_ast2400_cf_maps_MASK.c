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
struct fsi_master_acf {int cf_mem_addr; int /*<<< orphan*/  scu; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCU_2400_COPRO_CACHE_CTL ; 
 int SCU_2400_COPRO_CACHE_EN ; 
 int /*<<< orphan*/  SCU_2400_COPRO_SEG0 ; 
 int SCU_2400_COPRO_SEG0_CACHE_EN ; 
 int /*<<< orphan*/  SCU_2400_COPRO_SEG2 ; 
 int /*<<< orphan*/  SCU_2400_COPRO_SEG6 ; 
 int SCU_2400_COPRO_SEG_SWAP ; 
 int SYSREG_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct fsi_master_acf *master)
{
	/* Setup segment 0 to our memory region */
	FUNC0(master->scu, SCU_2400_COPRO_SEG0, master->cf_mem_addr |
		     SCU_2400_COPRO_SEG_SWAP);

	/* Segments 2 to sysregs with byteswap (for SRAM) */
	FUNC0(master->scu, SCU_2400_COPRO_SEG2, SYSREG_BASE |
		     SCU_2400_COPRO_SEG_SWAP);

	/* And segment 6 to sysregs no byteswap */
	FUNC0(master->scu, SCU_2400_COPRO_SEG6, SYSREG_BASE);

	/* Memory cachable, regs and SRAM not cachable */
	FUNC0(master->scu, SCU_2400_COPRO_CACHE_CTL,
		     SCU_2400_COPRO_SEG0_CACHE_EN | SCU_2400_COPRO_CACHE_EN);
}