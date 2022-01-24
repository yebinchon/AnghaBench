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
struct edma_cc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 scalar_t__ PARM_DST ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ PARM_SRC ; 
 int /*<<< orphan*/  FUNC2 (struct edma_cc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_addr_t FUNC3(struct edma_cc *ecc, unsigned slot,
				    bool dst)
{
	u32 offs;

	slot = FUNC0(slot);
	offs = FUNC1(slot);
	offs += dst ? PARM_DST : PARM_SRC;

	return FUNC2(ecc, offs);
}