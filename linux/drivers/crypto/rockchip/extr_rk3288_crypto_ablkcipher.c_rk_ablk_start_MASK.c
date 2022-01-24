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
struct rk_crypto_info {int aligned; int /*<<< orphan*/  lock; void* dst_nents; int /*<<< orphan*/  sg_dst; void* src_nents; int /*<<< orphan*/  first; int /*<<< orphan*/  sg_src; int /*<<< orphan*/  total; int /*<<< orphan*/  left_bytes; int /*<<< orphan*/  async_req; } ;
struct ablkcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  nbytes; } ;

/* Variables and functions */
 struct ablkcipher_request* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rk_crypto_info*) ; 
 int FUNC2 (struct rk_crypto_info*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct rk_crypto_info *dev)
{
	struct ablkcipher_request *req =
		FUNC0(dev->async_req);
	unsigned long flags;
	int err = 0;

	dev->left_bytes = req->nbytes;
	dev->total = req->nbytes;
	dev->sg_src = req->src;
	dev->first = req->src;
	dev->src_nents = FUNC3(req->src);
	dev->sg_dst = req->dst;
	dev->dst_nents = FUNC3(req->dst);
	dev->aligned = 1;

	FUNC4(&dev->lock, flags);
	FUNC1(dev);
	err = FUNC2(dev);
	FUNC5(&dev->lock, flags);
	return err;
}