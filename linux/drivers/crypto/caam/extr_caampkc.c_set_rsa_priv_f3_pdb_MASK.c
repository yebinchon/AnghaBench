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
struct sec4_sg_entry {int dummy; } ;
struct rsa_priv_f3_pdb {size_t p_q_len; void* p_dma; void* q_dma; void* dp_dma; void* dq_dma; void* c_dma; void* tmp1_dma; int /*<<< orphan*/  sgf; void* f_dma; void* g_dma; void* tmp2_dma; } ;
struct TYPE_2__ {struct rsa_priv_f3_pdb priv_f3; } ;
struct rsa_edesc {int src_nents; int dst_nents; void* sec4_sg_dma; TYPE_1__ pdb; } ;
struct device {int dummy; } ;
struct crypto_akcipher {int dummy; } ;
struct caam_rsa_req_ctx {int /*<<< orphan*/  fixup_src; } ;
struct caam_rsa_key {size_t p_sz; size_t q_sz; int /*<<< orphan*/  n_sz; int /*<<< orphan*/  tmp2; int /*<<< orphan*/  tmp1; int /*<<< orphan*/  qinv; int /*<<< orphan*/  dq; int /*<<< orphan*/  dp; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct caam_rsa_ctx {struct device* dev; struct caam_rsa_key key; } ;
struct akcipher_request {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 size_t RSA_PDB_Q_SHIFT ; 
 int /*<<< orphan*/  RSA_PRIV_PDB_SGF_F ; 
 int /*<<< orphan*/  RSA_PRIV_PDB_SGF_G ; 
 struct caam_rsa_req_ctx* FUNC0 (struct akcipher_request*) ; 
 struct caam_rsa_ctx* FUNC1 (struct crypto_akcipher*) ; 
 struct crypto_akcipher* FUNC2 (struct akcipher_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,void*,size_t,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct akcipher_request *req,
			       struct rsa_edesc *edesc)
{
	struct crypto_akcipher *tfm = FUNC2(req);
	struct caam_rsa_ctx *ctx = FUNC1(tfm);
	struct caam_rsa_key *key = &ctx->key;
	struct device *dev = ctx->dev;
	struct rsa_priv_f3_pdb *pdb = &edesc->pdb.priv_f3;
	int sec4_sg_index = 0;
	size_t p_sz = key->p_sz;
	size_t q_sz = key->q_sz;

	pdb->p_dma = FUNC4(dev, key->p, p_sz, DMA_TO_DEVICE);
	if (FUNC5(dev, pdb->p_dma)) {
		FUNC3(dev, "Unable to map RSA prime factor p memory\n");
		return -ENOMEM;
	}

	pdb->q_dma = FUNC4(dev, key->q, q_sz, DMA_TO_DEVICE);
	if (FUNC5(dev, pdb->q_dma)) {
		FUNC3(dev, "Unable to map RSA prime factor q memory\n");
		goto unmap_p;
	}

	pdb->dp_dma = FUNC4(dev, key->dp, p_sz, DMA_TO_DEVICE);
	if (FUNC5(dev, pdb->dp_dma)) {
		FUNC3(dev, "Unable to map RSA exponent dp memory\n");
		goto unmap_q;
	}

	pdb->dq_dma = FUNC4(dev, key->dq, q_sz, DMA_TO_DEVICE);
	if (FUNC5(dev, pdb->dq_dma)) {
		FUNC3(dev, "Unable to map RSA exponent dq memory\n");
		goto unmap_dp;
	}

	pdb->c_dma = FUNC4(dev, key->qinv, p_sz, DMA_TO_DEVICE);
	if (FUNC5(dev, pdb->c_dma)) {
		FUNC3(dev, "Unable to map RSA CRT coefficient qinv memory\n");
		goto unmap_dq;
	}

	pdb->tmp1_dma = FUNC4(dev, key->tmp1, p_sz, DMA_BIDIRECTIONAL);
	if (FUNC5(dev, pdb->tmp1_dma)) {
		FUNC3(dev, "Unable to map RSA tmp1 memory\n");
		goto unmap_qinv;
	}

	pdb->tmp2_dma = FUNC4(dev, key->tmp2, q_sz, DMA_BIDIRECTIONAL);
	if (FUNC5(dev, pdb->tmp2_dma)) {
		FUNC3(dev, "Unable to map RSA tmp2 memory\n");
		goto unmap_tmp1;
	}

	if (edesc->src_nents > 1) {
		pdb->sgf |= RSA_PRIV_PDB_SGF_G;
		pdb->g_dma = edesc->sec4_sg_dma;
		sec4_sg_index += edesc->src_nents;
	} else {
		struct caam_rsa_req_ctx *req_ctx = FUNC0(req);

		pdb->g_dma = FUNC7(req_ctx->fixup_src);
	}

	if (edesc->dst_nents > 1) {
		pdb->sgf |= RSA_PRIV_PDB_SGF_F;
		pdb->f_dma = edesc->sec4_sg_dma +
			     sec4_sg_index * sizeof(struct sec4_sg_entry);
	} else {
		pdb->f_dma = FUNC7(req->dst);
	}

	pdb->sgf |= key->n_sz;
	pdb->p_q_len = (q_sz << RSA_PDB_Q_SHIFT) | p_sz;

	return 0;

unmap_tmp1:
	FUNC6(dev, pdb->tmp1_dma, p_sz, DMA_BIDIRECTIONAL);
unmap_qinv:
	FUNC6(dev, pdb->c_dma, p_sz, DMA_TO_DEVICE);
unmap_dq:
	FUNC6(dev, pdb->dq_dma, q_sz, DMA_TO_DEVICE);
unmap_dp:
	FUNC6(dev, pdb->dp_dma, p_sz, DMA_TO_DEVICE);
unmap_q:
	FUNC6(dev, pdb->q_dma, q_sz, DMA_TO_DEVICE);
unmap_p:
	FUNC6(dev, pdb->p_dma, p_sz, DMA_TO_DEVICE);

	return -ENOMEM;
}