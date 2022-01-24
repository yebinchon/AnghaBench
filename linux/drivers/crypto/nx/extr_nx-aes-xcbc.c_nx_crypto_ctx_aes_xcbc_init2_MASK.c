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
struct TYPE_3__ {int /*<<< orphan*/  mode; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct nx_csbcpb {TYPE_2__ cpb; } ;
struct nx_crypto_ctx {struct nx_csbcpb* csbcpb; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCOP_FC_AES ; 
 int /*<<< orphan*/  FUNC0 (struct nx_csbcpb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_KS_AES_128 ; 
 int /*<<< orphan*/  NX_MODE_AES_XCBC_MAC ; 
 struct nx_crypto_ctx* FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC3 (struct nx_crypto_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	struct nx_crypto_ctx *nx_ctx = FUNC1(tfm);
	struct nx_csbcpb *csbcpb = nx_ctx->csbcpb;
	int err;

	err = FUNC2(tfm);
	if (err)
		return err;

	FUNC3(nx_ctx, HCOP_FC_AES);

	FUNC0(csbcpb, NX_KS_AES_128);
	csbcpb->cpb.hdr.mode = NX_MODE_AES_XCBC_MAC;

	return 0;
}