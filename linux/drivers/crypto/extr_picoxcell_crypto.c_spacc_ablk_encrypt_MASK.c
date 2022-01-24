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
struct spacc_alg {int /*<<< orphan*/  type; } ;
struct crypto_tfm {int /*<<< orphan*/  __crt_alg; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 struct crypto_ablkcipher* FUNC0 (struct ablkcipher_request*) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ablkcipher*) ; 
 int FUNC2 (struct ablkcipher_request*,int /*<<< orphan*/ ,int) ; 
 struct spacc_alg* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ablkcipher_request *req)
{
	struct crypto_ablkcipher *cipher = FUNC0(req);
	struct crypto_tfm *tfm = FUNC1(cipher);
	struct spacc_alg *alg = FUNC3(tfm->__crt_alg);

	return FUNC2(req, alg->type, 1);
}