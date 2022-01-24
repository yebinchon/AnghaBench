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
typedef  int /*<<< orphan*/  u64 ;
struct ppa_addr {int dummy; } ;
struct pblk_line {int dummy; } ;
struct pblk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct pblk_line*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*,struct ppa_addr) ; 
 int /*<<< orphan*/  FUNC4 (struct ppa_addr) ; 
 struct pblk_line* FUNC5 (struct pblk*,struct ppa_addr) ; 

void FUNC6(struct pblk *pblk, struct ppa_addr ppa)
{
	struct pblk_line *line;
	u64 paddr;

#ifdef CONFIG_NVM_PBLK_DEBUG
	/* Callers must ensure that the ppa points to a device address */
	BUG_ON(pblk_addr_in_cache(ppa));
	BUG_ON(pblk_ppa_empty(ppa));
#endif

	line = FUNC5(pblk, ppa);
	paddr = FUNC3(pblk, ppa);

	FUNC1(pblk, line, paddr);
}