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
struct nvm_tgt_dev {int dummy; } ;
struct nvm_rq {int /*<<< orphan*/  nr_ppas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvm_tgt_dev*,struct ppa_addr*,int /*<<< orphan*/ ) ; 
 struct ppa_addr* FUNC1 (struct nvm_rq*) ; 

__attribute__((used)) static void FUNC2(struct nvm_tgt_dev *tgt_dev, struct nvm_rq *rqd)
{
	struct ppa_addr *ppa_list = FUNC1(rqd);

	FUNC0(tgt_dev, ppa_list, rqd->nr_ppas);
}