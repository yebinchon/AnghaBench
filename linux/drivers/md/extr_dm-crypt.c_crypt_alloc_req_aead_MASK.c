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
struct TYPE_4__ {int /*<<< orphan*/ * tfms_aead; } ;
struct crypt_config {TYPE_2__ cipher_tfm; int /*<<< orphan*/  req_pool; } ;
struct TYPE_3__ {scalar_t__ req_aead; } ;
struct convert_context {TYPE_1__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*,scalar_t__) ; 
 int /*<<< orphan*/  kcryptd_async_done ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct crypt_config *cc,
				 struct convert_context *ctx)
{
	if (!ctx->r.req_aead)
		ctx->r.req_aead = FUNC3(&cc->req_pool, GFP_NOIO);

	FUNC1(ctx->r.req_aead, cc->cipher_tfm.tfms_aead[0]);

	/*
	 * Use REQ_MAY_BACKLOG so a cipher driver internally backlogs
	 * requests if driver request queue is full.
	 */
	FUNC0(ctx->r.req_aead,
	    CRYPTO_TFM_REQ_MAY_BACKLOG,
	    kcryptd_async_done, FUNC2(cc, ctx->r.req_aead));
}