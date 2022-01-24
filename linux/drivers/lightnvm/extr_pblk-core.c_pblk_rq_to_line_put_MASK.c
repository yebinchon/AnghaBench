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
struct nvm_rq {int nr_ppas; } ;

/* Variables and functions */
 struct ppa_addr* FUNC0 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct ppa_addr) ; 

void FUNC2(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct ppa_addr *ppa_list = FUNC0(rqd);
	int i;

	for (i = 0; i < rqd->nr_ppas; i++)
		FUNC1(pblk, ppa_list[i]);
}