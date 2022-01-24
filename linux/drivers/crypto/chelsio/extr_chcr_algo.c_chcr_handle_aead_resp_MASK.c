#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct crypto_aead {int dummy; } ;
struct chcr_dev {int dummy; } ;
struct chcr_aead_reqctx {scalar_t__ verify; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct aead_request {TYPE_1__ base; } ;
struct TYPE_4__ {struct chcr_dev* dev; } ;

/* Variables and functions */
 scalar_t__ VERIFY_HW ; 
 scalar_t__ VERIFY_SW ; 
 TYPE_2__* FUNC0 (struct crypto_aead*) ; 
 struct chcr_aead_reqctx* FUNC1 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct chcr_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct aead_request*,unsigned char*,int*) ; 
 struct crypto_aead* FUNC5 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC7(struct aead_request *req,
					 unsigned char *input,
					 int err)
{
	struct chcr_aead_reqctx *reqctx = FUNC1(req);
	struct crypto_aead *tfm = FUNC5(req);
	struct chcr_dev *dev = FUNC0(tfm)->dev;

	FUNC2(req);
	if (reqctx->verify == VERIFY_SW) {
		FUNC4(req, input, &err);
		reqctx->verify = VERIFY_HW;
	}
	FUNC3(dev);
	req->base.complete(&req->base, err);

	return err;
}