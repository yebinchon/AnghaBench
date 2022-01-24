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
struct safexcel_crypto_priv {int dummy; } ;
struct safexcel_cipher_req {int needs_inv; } ;
struct crypto_async_request {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct aead_request* FUNC0 (struct crypto_async_request*) ; 
 struct safexcel_cipher_req* FUNC1 (struct aead_request*) ; 
 scalar_t__ FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct safexcel_crypto_priv*,int,struct crypto_async_request*,struct safexcel_cipher_req*,int*,int*) ; 
 int FUNC5 (struct safexcel_crypto_priv*,int,struct crypto_async_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct safexcel_cipher_req*,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct safexcel_crypto_priv *priv,
				       int ring,
				       struct crypto_async_request *async,
				       bool *should_complete, int *ret)
{
	struct aead_request *req = FUNC0(async);
	struct crypto_aead *tfm = FUNC3(req);
	struct safexcel_cipher_req *sreq = FUNC1(req);
	int err;

	if (sreq->needs_inv) {
		sreq->needs_inv = false;
		err = FUNC4(priv, ring, async, sreq,
						 should_complete, ret);
	} else {
		err = FUNC5(priv, ring, async, req->src,
						 req->dst,
						 req->cryptlen + FUNC2(tfm),
						 sreq, should_complete, ret);
	}

	return err;
}