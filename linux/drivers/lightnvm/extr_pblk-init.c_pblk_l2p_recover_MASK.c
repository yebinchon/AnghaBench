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
struct pblk_line {int dummy; } ;
struct pblk {int /*<<< orphan*/  instance_uuid; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*) ; 
 struct pblk_line* FUNC6 (struct pblk*) ; 
 struct pblk_line* FUNC7 (struct pblk*) ; 

__attribute__((used)) static int FUNC8(struct pblk *pblk, bool factory_init)
{
	struct pblk_line *line = NULL;

	if (factory_init) {
		FUNC1(&pblk->instance_uuid);
	} else {
		line = FUNC7(pblk);
		if (FUNC0(line)) {
			FUNC2(pblk, "could not recover l2p table\n");
			return -EFAULT;
		}
	}

#ifdef CONFIG_NVM_PBLK_DEBUG
	pblk_info(pblk, "init: L2P CRC: %x\n", pblk_l2p_crc(pblk));
#endif

	/* Free full lines directly as GC has not been started yet */
	FUNC3(pblk);

	if (!line) {
		/* Configure next line for user data */
		line = FUNC6(pblk);
		if (!line)
			return -EFAULT;
	}

	return 0;
}