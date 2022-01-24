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
struct pblk {struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int dummy; } ;
struct nvm_tgt_dev {struct nvm_geo geo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pblk*,int) ; 
 int FUNC1 (struct nvm_geo*,struct ppa_addr) ; 
 scalar_t__ FUNC2 (int,unsigned long*) ; 

void FUNC3(struct pblk *pblk, struct ppa_addr ppa,
		  unsigned long *lun_bitmap)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	int pos = FUNC1(geo, ppa);

	/* If the LUN has been locked for this same request, do no attempt to
	 * lock it again
	 */
	if (FUNC2(pos, lun_bitmap))
		return;

	FUNC0(pblk, pos);
}