#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rsa_priv_f1_pdb {int /*<<< orphan*/  d_dma; int /*<<< orphan*/  n_dma; } ;
struct TYPE_2__ {struct rsa_priv_f1_pdb priv_f1; } ;
struct rsa_edesc {TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_key {int /*<<< orphan*/  d_sz; int /*<<< orphan*/  n_sz; } ;
struct caam_rsa_ctx {struct caam_rsa_key key; } ;
struct akcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct caam_rsa_ctx* FUNC0 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC1 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct rsa_edesc *edesc,
			      struct akcipher_request *req)
{
	struct crypto_akcipher *tfm = FUNC1(req);
	struct caam_rsa_ctx *ctx = FUNC0(tfm);
	struct caam_rsa_key *key = &ctx->key;
	struct rsa_priv_f1_pdb *pdb = &edesc->pdb.priv_f1;

	FUNC2(dev, pdb->n_dma, key->n_sz, DMA_TO_DEVICE);
	FUNC2(dev, pdb->d_dma, key->d_sz, DMA_TO_DEVICE);
}