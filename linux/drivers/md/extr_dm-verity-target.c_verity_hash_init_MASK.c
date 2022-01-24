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
struct dm_verity {int version; scalar_t__ salt_size; int /*<<< orphan*/  salt; int /*<<< orphan*/  tfm; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_BACKLOG ; 
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_wait*) ; 
 int /*<<< orphan*/  crypto_req_done ; 
 int FUNC5 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct dm_verity*,struct ahash_request*,int /*<<< orphan*/ ,scalar_t__,struct crypto_wait*) ; 

__attribute__((used)) static int FUNC9(struct dm_verity *v, struct ahash_request *req,
				struct crypto_wait *wait)
{
	int r;

	FUNC2(req, v->tfm);
	FUNC1(req, CRYPTO_TFM_REQ_MAY_SLEEP |
					CRYPTO_TFM_REQ_MAY_BACKLOG,
					crypto_req_done, (void *)wait);
	FUNC4(wait);

	r = FUNC5(FUNC3(req), wait);

	if (FUNC7(r < 0)) {
		FUNC0("crypto_ahash_init failed: %d", r);
		return r;
	}

	if (FUNC6(v->salt_size && (v->version >= 1)))
		r = FUNC8(v, req, v->salt, v->salt_size, wait);

	return r;
}