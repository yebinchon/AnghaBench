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
typedef  int /*<<< orphan*/  u8 ;
struct dm_verity {scalar_t__ salt_size; int /*<<< orphan*/  salt; int /*<<< orphan*/  version; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahash_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct crypto_wait*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct dm_verity*,struct ahash_request*,int /*<<< orphan*/ ,scalar_t__,struct crypto_wait*) ; 

__attribute__((used)) static int FUNC6(struct dm_verity *v, struct ahash_request *req,
			     u8 *digest, struct crypto_wait *wait)
{
	int r;

	if (FUNC4(v->salt_size && (!v->version))) {
		r = FUNC5(v, req, v->salt, v->salt_size, wait);

		if (r < 0) {
			FUNC0("verity_hash_final failed updating salt: %d", r);
			goto out;
		}
	}

	FUNC1(req, NULL, digest, 0);
	r = FUNC3(FUNC2(req), wait);
out:
	return r;
}