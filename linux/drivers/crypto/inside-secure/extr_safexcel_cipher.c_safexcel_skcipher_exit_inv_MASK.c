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
struct skcipher_request {int dummy; } ;
struct safexcel_inv_result {int dummy; } ;
struct safexcel_cipher_req {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIP197_SKCIPHER_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* req ; 
 int FUNC3 (struct crypto_tfm*,int /*<<< orphan*/ *,struct safexcel_cipher_req*,struct safexcel_inv_result*) ; 
 int /*<<< orphan*/  safexcel_inv_complete ; 
 int /*<<< orphan*/  skcipher ; 
 struct safexcel_cipher_req* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct safexcel_inv_result*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct crypto_tfm *tfm)
{
	FUNC0(req, skcipher, EIP197_SKCIPHER_REQ_SIZE);
	struct safexcel_cipher_req *sreq = FUNC4(req);
	struct safexcel_inv_result result = {};

	FUNC2(req, 0, sizeof(struct skcipher_request));

	FUNC5(req, CRYPTO_TFM_REQ_MAY_BACKLOG,
				      safexcel_inv_complete, &result);
	FUNC6(req, FUNC1(tfm));

	return FUNC3(tfm, &req->base, sreq, &result);
}