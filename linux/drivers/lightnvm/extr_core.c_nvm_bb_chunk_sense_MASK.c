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
struct page {int dummy; } ;
struct nvm_rq {int is_seq; int nr_ppas; int error; int /*<<< orphan*/  ppa_addr; int /*<<< orphan*/  opcode; struct bio* bio; int /*<<< orphan*/ * member_0; } ;
struct nvm_dev {int dummy; } ;
struct bio_vec {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVM_OP_PREAD ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio_vec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvm_dev*,struct ppa_addr) ; 
 int FUNC6 (struct nvm_dev*,struct nvm_rq*) ; 

__attribute__((used)) static int FUNC7(struct nvm_dev *dev, struct ppa_addr ppa)
{
	struct nvm_rq rqd = { NULL };
	struct bio bio;
	struct bio_vec bio_vec;
	struct page *page;
	int ret;

	page = FUNC1(GFP_KERNEL);
	if (!page)
		return -ENOMEM;

	FUNC3(&bio, &bio_vec, 1);
	FUNC2(&bio, page, PAGE_SIZE, 0);
	FUNC4(&bio, REQ_OP_READ, 0);

	rqd.bio = &bio;
	rqd.opcode = NVM_OP_PREAD;
	rqd.is_seq = 1;
	rqd.nr_ppas = 1;
	rqd.ppa_addr = FUNC5(dev, ppa);

	ret = FUNC6(dev, &rqd);
	if (ret)
		return ret;

	FUNC0(page);

	return rqd.error;
}