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
typedef  int u32 ;
struct atmel_sha_reqctx {int flags; int /*<<< orphan*/  block_size; } ;
struct atmel_sha_dev {int /*<<< orphan*/  tmp; struct ahash_request* req; } ;
struct ahash_request {int dummy; } ;
typedef  int /*<<< orphan*/  atmel_sha_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_BCR ; 
 int /*<<< orphan*/  SHA_CR ; 
 int SHA_CR_FIRST ; 
 int SHA_FLAGS_ALGO_MASK ; 
 int /*<<< orphan*/  SHA_MR ; 
 int SHA_MR_MODE_AUTO ; 
 int /*<<< orphan*/  SHA_MSR ; 
 struct atmel_sha_reqctx* FUNC1 (struct ahash_request*) ; 
 int FUNC2 (struct atmel_sha_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct atmel_sha_dev*,int /*<<< orphan*/ *,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_sha_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct atmel_sha_dev *dd,
			      const void *data, unsigned int datalen,
			      bool auto_padding,
			      atmel_sha_fn_t resume)
{
	struct ahash_request *req = dd->req;
	struct atmel_sha_reqctx *ctx = FUNC1(req);
	u32 msglen = (auto_padding) ? datalen : 0;
	u32 mr = SHA_MR_MODE_AUTO;

	if (!(FUNC0(datalen, ctx->block_size) || auto_padding))
		return FUNC2(dd, -EINVAL);

	mr |= (ctx->flags & SHA_FLAGS_ALGO_MASK);
	FUNC4(dd, SHA_MR, mr);
	FUNC4(dd, SHA_MSR, msglen);
	FUNC4(dd, SHA_BCR, msglen);
	FUNC4(dd, SHA_CR, SHA_CR_FIRST);

	FUNC5(&dd->tmp, data, datalen);
	return FUNC3(dd, &dd->tmp, datalen, false, true, resume);
}