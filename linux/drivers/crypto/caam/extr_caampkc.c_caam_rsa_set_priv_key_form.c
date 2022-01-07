
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_key {size_t p_sz; size_t q_sz; int qinv_sz; int qinv; int dq_sz; int dq; int dp_sz; int dp; int q; int p; } ;
struct caam_rsa_key {size_t p_sz; size_t q_sz; void* p; void* q; void* tmp1; void* tmp2; void* dp; void* dq; int priv_form; void* qinv; } ;
struct caam_rsa_ctx {struct caam_rsa_key key; } ;


 int FORM2 ;
 int FORM3 ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 void* caam_read_raw_data (int ,size_t*) ;
 void* caam_read_rsa_crt (int ,int ,size_t) ;
 void* kzalloc (size_t,int) ;
 int kzfree (void*) ;

__attribute__((used)) static void caam_rsa_set_priv_key_form(struct caam_rsa_ctx *ctx,
           struct rsa_key *raw_key)
{
 struct caam_rsa_key *rsa_key = &ctx->key;
 size_t p_sz = raw_key->p_sz;
 size_t q_sz = raw_key->q_sz;

 rsa_key->p = caam_read_raw_data(raw_key->p, &p_sz);
 if (!rsa_key->p)
  return;
 rsa_key->p_sz = p_sz;

 rsa_key->q = caam_read_raw_data(raw_key->q, &q_sz);
 if (!rsa_key->q)
  goto free_p;
 rsa_key->q_sz = q_sz;

 rsa_key->tmp1 = kzalloc(raw_key->p_sz, GFP_DMA | GFP_KERNEL);
 if (!rsa_key->tmp1)
  goto free_q;

 rsa_key->tmp2 = kzalloc(raw_key->q_sz, GFP_DMA | GFP_KERNEL);
 if (!rsa_key->tmp2)
  goto free_tmp1;

 rsa_key->priv_form = FORM2;

 rsa_key->dp = caam_read_rsa_crt(raw_key->dp, raw_key->dp_sz, p_sz);
 if (!rsa_key->dp)
  goto free_tmp2;

 rsa_key->dq = caam_read_rsa_crt(raw_key->dq, raw_key->dq_sz, q_sz);
 if (!rsa_key->dq)
  goto free_dp;

 rsa_key->qinv = caam_read_rsa_crt(raw_key->qinv, raw_key->qinv_sz,
       q_sz);
 if (!rsa_key->qinv)
  goto free_dq;

 rsa_key->priv_form = FORM3;

 return;

free_dq:
 kzfree(rsa_key->dq);
free_dp:
 kzfree(rsa_key->dp);
free_tmp2:
 kzfree(rsa_key->tmp2);
free_tmp1:
 kzfree(rsa_key->tmp1);
free_q:
 kzfree(rsa_key->q);
free_p:
 kzfree(rsa_key->p);
}
