#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skcipher_request {scalar_t__ iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  cryptlen; } ;
struct scatterlist {int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct pd_uinfo {int state; TYPE_5__* sr_va; TYPE_4__* sa_va; struct scatterlist* dest_va; int /*<<< orphan*/  async_req; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto4xx_device {TYPE_1__* core_dev; } ;
struct ce_pd {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  save_iv; } ;
struct TYPE_7__ {scalar_t__ save_iv; scalar_t__ scatter; } ;
struct TYPE_8__ {TYPE_2__ bf; } ;
struct TYPE_9__ {TYPE_3__ sa_command_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int PD_ENTRY_BUSY ; 
 scalar_t__ SA_SAVE_IV ; 
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_device*,struct ce_pd*,struct pd_uinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypto4xx_device*,struct pd_uinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_skcipher*) ; 
 struct crypto_skcipher* FUNC4 (struct skcipher_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 struct skcipher_request* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skcipher_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct crypto4xx_device *dev,
				     struct pd_uinfo *pd_uinfo,
				     struct ce_pd *pd)
{
	struct skcipher_request *req;
	struct scatterlist *dst;
	dma_addr_t addr;

	req = FUNC7(pd_uinfo->async_req);

	if (pd_uinfo->sa_va->sa_command_0.bf.scatter) {
		FUNC0(dev, pd, pd_uinfo,
					  req->cryptlen, req->dst);
	} else {
		dst = pd_uinfo->dest_va;
		addr = FUNC5(dev->core_dev->device, FUNC6(dst),
				    dst->offset, dst->length, DMA_FROM_DEVICE);
	}

	if (pd_uinfo->sa_va->sa_command_0.bf.save_iv == SA_SAVE_IV) {
		struct crypto_skcipher *skcipher = FUNC4(req);

		FUNC1((u32 *)req->iv,
			pd_uinfo->sr_va->save_iv,
			FUNC3(skcipher));
	}

	FUNC2(dev, pd_uinfo);

	if (pd_uinfo->state & PD_ENTRY_BUSY)
		FUNC8(req, -EINPROGRESS);
	FUNC8(req, 0);
}