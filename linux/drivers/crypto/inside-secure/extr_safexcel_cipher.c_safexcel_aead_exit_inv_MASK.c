#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct safexcel_inv_result {int dummy; } ;
struct safexcel_cipher_req {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct aead_request {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  EIP197_AEAD_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  aead ; 
 struct safexcel_cipher_req* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_inv_result*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* req ; 
 int FUNC6 (struct crypto_tfm*,int /*<<< orphan*/ *,struct safexcel_cipher_req*,struct safexcel_inv_result*) ; 
 int /*<<< orphan*/  safexcel_inv_complete ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	FUNC0(req, aead, EIP197_AEAD_REQ_SIZE);
	struct safexcel_cipher_req *sreq = FUNC2(req);
	struct safexcel_inv_result result = {};

	FUNC5(req, 0, sizeof(struct aead_request));

	FUNC3(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				  safexcel_inv_complete, &result);
	FUNC4(req, FUNC1(tfm));

	return FUNC6(tfm, &req->base, sreq, &result);
}