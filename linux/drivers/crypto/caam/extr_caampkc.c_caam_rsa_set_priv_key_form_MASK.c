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
struct rsa_key {size_t p_sz; size_t q_sz; int /*<<< orphan*/  qinv_sz; int /*<<< orphan*/  qinv; int /*<<< orphan*/  dq_sz; int /*<<< orphan*/  dq; int /*<<< orphan*/  dp_sz; int /*<<< orphan*/  dp; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct caam_rsa_key {size_t p_sz; size_t q_sz; void* p; void* q; void* tmp1; void* tmp2; void* dp; void* dq; int /*<<< orphan*/  priv_form; void* qinv; } ;
struct caam_rsa_ctx {struct caam_rsa_key key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORM2 ; 
 int /*<<< orphan*/  FORM3 ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(struct caam_rsa_ctx *ctx,
				       struct rsa_key *raw_key)
{
	struct caam_rsa_key *rsa_key = &ctx->key;
	size_t p_sz = raw_key->p_sz;
	size_t q_sz = raw_key->q_sz;

	rsa_key->p = FUNC0(raw_key->p, &p_sz);
	if (!rsa_key->p)
		return;
	rsa_key->p_sz = p_sz;

	rsa_key->q = FUNC0(raw_key->q, &q_sz);
	if (!rsa_key->q)
		goto free_p;
	rsa_key->q_sz = q_sz;

	rsa_key->tmp1 = FUNC2(raw_key->p_sz, GFP_DMA | GFP_KERNEL);
	if (!rsa_key->tmp1)
		goto free_q;

	rsa_key->tmp2 = FUNC2(raw_key->q_sz, GFP_DMA | GFP_KERNEL);
	if (!rsa_key->tmp2)
		goto free_tmp1;

	rsa_key->priv_form = FORM2;

	rsa_key->dp = FUNC1(raw_key->dp, raw_key->dp_sz, p_sz);
	if (!rsa_key->dp)
		goto free_tmp2;

	rsa_key->dq = FUNC1(raw_key->dq, raw_key->dq_sz, q_sz);
	if (!rsa_key->dq)
		goto free_dp;

	rsa_key->qinv = FUNC1(raw_key->qinv, raw_key->qinv_sz,
					  q_sz);
	if (!rsa_key->qinv)
		goto free_dq;

	rsa_key->priv_form = FORM3;

	return;

free_dq:
	FUNC3(rsa_key->dq);
free_dp:
	FUNC3(rsa_key->dp);
free_tmp2:
	FUNC3(rsa_key->tmp2);
free_tmp1:
	FUNC3(rsa_key->tmp1);
free_q:
	FUNC3(rsa_key->q);
free_p:
	FUNC3(rsa_key->p);
}