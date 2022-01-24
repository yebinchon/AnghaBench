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
struct sahara_sha_reqctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 scalar_t__ SHA256_BLOCK_SIZE ; 
 scalar_t__ SHA_BUFFER_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm)
{
	FUNC1(FUNC0(tfm),
				 sizeof(struct sahara_sha_reqctx) +
				 SHA_BUFFER_LEN + SHA256_BLOCK_SIZE);

	return 0;
}