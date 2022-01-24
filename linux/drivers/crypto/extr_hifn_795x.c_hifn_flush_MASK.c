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
struct hifn_dma {struct hifn_desc* resr; } ;
struct hifn_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; struct ablkcipher_request** sa; scalar_t__ desc_virt; } ;
struct hifn_desc {int l; } ;
struct crypto_async_request {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int HIFN_D_RES_RSIZE ; 
 int /*<<< orphan*/  HIFN_D_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct ablkcipher_request* FUNC1 (struct crypto_async_request*) ; 
 struct crypto_async_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct hifn_device *dev)
{
	unsigned long flags;
	struct crypto_async_request *async_req;
	struct ablkcipher_request *req;
	struct hifn_dma *dma = (struct hifn_dma *)dev->desc_virt;
	int i;

	for (i = 0; i < HIFN_D_RES_RSIZE; ++i) {
		struct hifn_desc *d = &dma->resr[i];

		if (dev->sa[i]) {
			FUNC4(dev->sa[i],
				(d->l & FUNC0(HIFN_D_VALID)) ? -ENODEV : 0);
			FUNC3(dev, i);
		}
	}

	FUNC5(&dev->lock, flags);
	while ((async_req = FUNC2(&dev->queue))) {
		req = FUNC1(async_req);
		FUNC6(&dev->lock, flags);

		FUNC4(req, -ENODEV);

		FUNC5(&dev->lock, flags);
	}
	FUNC6(&dev->lock, flags);
}