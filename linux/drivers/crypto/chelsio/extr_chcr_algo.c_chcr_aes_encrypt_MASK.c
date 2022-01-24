#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ports; int /*<<< orphan*/ * rxq_ids; } ;
struct uld_ctx {TYPE_2__ lldi; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct crypto_ablkcipher {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ablkcipher_request {TYPE_1__ base; } ;
struct TYPE_7__ {size_t rx_qidx; int /*<<< orphan*/  tx_qidx; struct chcr_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHCR_ENCRYPT_OP ; 
 int /*<<< orphan*/  CPL_PRIORITY_DATA ; 
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int EBUSY ; 
 int EINPROGRESS ; 
 int ENOSPC ; 
 int ENXIO ; 
 struct uld_ctx* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (struct crypto_ablkcipher*) ; 
 int /*<<< orphan*/  FUNC2 (struct chcr_dev*) ; 
 int FUNC3 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct crypto_ablkcipher* FUNC5 (struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ablkcipher_request*,int /*<<< orphan*/ ,struct sk_buff**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *tfm = FUNC5(req);
	struct chcr_dev *dev = FUNC1(tfm)->dev;
	struct sk_buff *skb = NULL;
	int err, isfull = 0;
	struct uld_ctx *u_ctx = FUNC0(FUNC1(tfm));

	err = FUNC3(dev);
	if (err)
		return -ENXIO;
	if (FUNC9(FUNC6(u_ctx->lldi.ports[0],
					    FUNC1(tfm)->tx_qidx))) {
		isfull = 1;
		if (!(req->base.flags & CRYPTO_TFM_REQ_MAY_BACKLOG)) {
			err = -ENOSPC;
			goto error;
		}
	}

	err = FUNC7(req, u_ctx->lldi.rxq_ids[FUNC1(tfm)->rx_qidx],
			     &skb, CHCR_ENCRYPT_OP);
	if (err || !skb)
		return  err;
	skb->dev = u_ctx->lldi.ports[0];
	FUNC8(skb, CPL_PRIORITY_DATA, FUNC1(tfm)->tx_qidx);
	FUNC4(skb);
	return isfull ? -EBUSY : -EINPROGRESS;
error:
	FUNC2(dev);
	return err;
}