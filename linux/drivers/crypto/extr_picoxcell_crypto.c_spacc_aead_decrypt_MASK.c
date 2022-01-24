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
struct spacc_aead {int /*<<< orphan*/  type; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct aead_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spacc_aead* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct aead_request *req)
{
	struct crypto_aead *aead = FUNC1(req);
	struct spacc_aead  *alg = FUNC3(FUNC0(aead));

	return FUNC2(req, alg->type, 0);
}