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

/* Variables and functions */
 int /*<<< orphan*/  DCRN_MQ0_CF2H ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppc440spe_mq_dcr_host ; 

__attribute__((used)) static inline void FUNC1(u32 byte_count)
{
	/* assume that byte_count is aligned on the 512-boundary;
	 * thus write it directly to the register (bits 23:31 are
	 * reserved there).
	 */
	FUNC0(ppc440spe_mq_dcr_host, DCRN_MQ0_CF2H, byte_count);
}