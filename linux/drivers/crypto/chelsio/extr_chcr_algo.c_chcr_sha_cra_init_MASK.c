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
struct crypto_tfm {int dummy; } ;
struct chcr_ahash_req_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_tfm*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC4(struct crypto_tfm *tfm)
{
	FUNC2(FUNC0(tfm),
				 sizeof(struct chcr_ahash_req_ctx));
	return FUNC1(FUNC3(tfm));
}