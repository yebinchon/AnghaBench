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
struct crypto_ahash {int dummy; } ;
struct ahash_request {int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MD5_DIGEST_SIZE 130 
#define  SHA1_DIGEST_SIZE 129 
#define  SHA256_DIGEST_SIZE 128 
 int FUNC0 (struct crypto_ahash*) ; 
 struct crypto_ahash* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  md5_zero_message_hash ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sha1_zero_message_hash ; 
 int /*<<< orphan*/  sha256_zero_message_hash ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req)
{
	struct crypto_ahash *tfm = FUNC1(req);
	int rk_digest_size = FUNC0(tfm);

	switch (rk_digest_size) {
	case SHA1_DIGEST_SIZE:
		FUNC2(req->result, sha1_zero_message_hash, rk_digest_size);
		break;
	case SHA256_DIGEST_SIZE:
		FUNC2(req->result, sha256_zero_message_hash, rk_digest_size);
		break;
	case MD5_DIGEST_SIZE:
		FUNC2(req->result, md5_zero_message_hash, rk_digest_size);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}