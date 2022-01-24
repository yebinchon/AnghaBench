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
struct pblk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,int) ; 

__attribute__((used)) static void FUNC5(void *private, bool graceful)
{
	struct pblk *pblk = private;

	FUNC1(pblk, graceful);
	FUNC4(pblk, graceful);

#ifdef CONFIG_NVM_PBLK_DEBUG
	pblk_info(pblk, "exit: L2P CRC: %x\n", pblk_l2p_crc(pblk));
#endif

	FUNC0(pblk);
}