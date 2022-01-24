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
struct pblk_recov_alloc {void* dma_meta_list; void* dma_ppa_list; void* data; struct nvm_rq* rqd; void* meta_list; struct ppa_addr* ppa_list; } ;
struct pblk_line {int dummy; } ;
struct pblk {int /*<<< orphan*/  r_rq_pool; int /*<<< orphan*/  max_write_pgs; struct nvm_tgt_dev* dev; } ;
struct nvm_geo {int /*<<< orphan*/  csecs; } ;
struct nvm_tgt_dev {int /*<<< orphan*/  parent; struct nvm_geo geo; } ;
struct nvm_rq {int dummy; } ;
typedef  scalar_t__ meta_list ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 struct nvm_rq* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvm_rq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nvm_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC7 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC8 (struct pblk*,char*) ; 
 int /*<<< orphan*/  pblk_g_rq_size ; 
 scalar_t__ FUNC9 (struct pblk_line*) ; 
 int /*<<< orphan*/  FUNC10 (struct pblk*,struct pblk_line*) ; 
 int FUNC11 (struct pblk*,struct pblk_line*,struct pblk_recov_alloc) ; 

__attribute__((used)) static int FUNC12(struct pblk *pblk, struct pblk_line *line)
{
	struct nvm_tgt_dev *dev = pblk->dev;
	struct nvm_geo *geo = &dev->geo;
	struct nvm_rq *rqd;
	struct ppa_addr *ppa_list;
	void *meta_list;
	struct pblk_recov_alloc p;
	void *data;
	dma_addr_t dma_ppa_list, dma_meta_list;
	int ret = 0;

	meta_list = FUNC5(dev->parent, GFP_KERNEL, &dma_meta_list);
	if (!meta_list)
		return -ENOMEM;

	ppa_list = (void *)(meta_list) + FUNC7(pblk);
	dma_ppa_list = dma_meta_list + FUNC7(pblk);

	data = FUNC0(pblk->max_write_pgs, geo->csecs, GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto free_meta_list;
	}

	rqd = FUNC2(&pblk->r_rq_pool, GFP_KERNEL);
	FUNC4(rqd, 0, pblk_g_rq_size);

	p.ppa_list = ppa_list;
	p.meta_list = meta_list;
	p.rqd = rqd;
	p.data = data;
	p.dma_ppa_list = dma_ppa_list;
	p.dma_meta_list = dma_meta_list;

	ret = FUNC11(pblk, line, p);
	if (ret) {
		FUNC8(pblk, "could not recover L2P form OOB\n");
		goto out;
	}

	if (FUNC9(line))
		FUNC10(pblk, line);

out:
	FUNC3(rqd, &pblk->r_rq_pool);
	FUNC1(data);
free_meta_list:
	FUNC6(dev->parent, meta_list, dma_meta_list);

	return ret;
}