#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct n2_hmac_ctx {int dummy; } ;
struct crypto_alg {int cra_ctxsize; int /*<<< orphan*/  cra_name; int /*<<< orphan*/  cra_exit; int /*<<< orphan*/  cra_init; int /*<<< orphan*/  cra_driver_name; } ;
struct TYPE_9__ {struct crypto_alg base; } ;
struct ahash_alg {TYPE_4__ halg; int /*<<< orphan*/  setkey; int /*<<< orphan*/  digest; } ;
struct TYPE_10__ {int /*<<< orphan*/  entry; struct ahash_alg alg; } ;
struct n2_hmac_alg {char* child_alg; TYPE_5__ derived; } ;
struct TYPE_6__ {char* cra_name; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct TYPE_8__ {TYPE_2__ halg; } ;
struct n2_ahash_alg {TYPE_3__ alg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_MAX_ALG_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ahash_alg*) ; 
 int /*<<< orphan*/  hmac_algs ; 
 int /*<<< orphan*/  FUNC2 (struct n2_hmac_alg*) ; 
 struct n2_hmac_alg* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct n2_ahash_alg*,int) ; 
 int /*<<< orphan*/  n2_hmac_async_digest ; 
 int /*<<< orphan*/  n2_hmac_async_setkey ; 
 int /*<<< orphan*/  n2_hmac_cra_exit ; 
 int /*<<< orphan*/  n2_hmac_cra_init ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC10(struct n2_ahash_alg *n2ahash)
{
	struct n2_hmac_alg *p = FUNC3(sizeof(*p), GFP_KERNEL);
	struct ahash_alg *ahash;
	struct crypto_alg *base;
	int err;

	if (!p)
		return -ENOMEM;

	p->child_alg = n2ahash->alg.halg.base.cra_name;
	FUNC6(&p->derived, n2ahash, sizeof(struct n2_ahash_alg));
	FUNC0(&p->derived.entry);

	ahash = &p->derived.alg;
	ahash->digest = n2_hmac_async_digest;
	ahash->setkey = n2_hmac_async_setkey;

	base = &ahash->halg.base;
	FUNC9(base->cra_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)", p->child_alg);
	FUNC9(base->cra_driver_name, CRYPTO_MAX_ALG_NAME, "hmac-%s-n2", p->child_alg);

	base->cra_ctxsize = sizeof(struct n2_hmac_ctx);
	base->cra_init = n2_hmac_cra_init;
	base->cra_exit = n2_hmac_cra_exit;

	FUNC4(&p->derived.entry, &hmac_algs);
	err = FUNC1(ahash);
	if (err) {
		FUNC7("%s alg registration failed\n", base->cra_name);
		FUNC5(&p->derived.entry);
		FUNC2(p);
	} else {
		FUNC8("%s alg registered\n", base->cra_name);
	}
	return err;
}