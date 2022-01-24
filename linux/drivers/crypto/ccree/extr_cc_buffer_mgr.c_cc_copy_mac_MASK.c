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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  src; scalar_t__ cryptlen; } ;
struct aead_req_ctx {scalar_t__ req_authsize; int /*<<< orphan*/  backup_mac; scalar_t__ is_gcm4543; scalar_t__ assoclen; } ;
typedef  enum cc_sg_cpy_direct { ____Placeholder_cc_sg_cpy_direct } cc_sg_cpy_direct ;

/* Variables and functions */
 struct aead_req_ctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct aead_request *req,
			enum cc_sg_cpy_direct dir)
{
	struct aead_req_ctx *areq_ctx = FUNC0(req);
	struct crypto_aead *tfm = FUNC3(req);
	u32 skip = areq_ctx->assoclen + req->cryptlen;

	if (areq_ctx->is_gcm4543)
		skip += FUNC2(tfm);

	FUNC1(dev, areq_ctx->backup_mac, req->src,
			   (skip - areq_ctx->req_authsize), skip, dir);
}