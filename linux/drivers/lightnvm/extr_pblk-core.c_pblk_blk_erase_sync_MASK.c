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
struct ppa_addr {int dummy; } ;
struct pblk {int dummy; } ;
struct nvm_rq {struct pblk* private; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_CHUNK_RESET_START ; 
 int /*<<< orphan*/  FUNC0 (struct pblk*,struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,struct nvm_rq*,struct ppa_addr) ; 
 int FUNC3 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ppa_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pblk *pblk, struct ppa_addr ppa)
{
	struct nvm_rq rqd = {NULL};
	int ret;

	FUNC4(FUNC1(pblk), &ppa,
				PBLK_CHUNK_RESET_START);

	FUNC2(pblk, &rqd, ppa);

	/* The write thread schedules erases so that it minimizes disturbances
	 * with writes. Thus, there is no need to take the LUN semaphore.
	 */
	ret = FUNC3(pblk, &rqd, NULL);
	rqd.private = pblk;
	FUNC0(pblk, &rqd);

	return ret;
}