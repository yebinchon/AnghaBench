
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {scalar_t__ keylen; } ;
struct caam_ctx {TYPE_1__ cdata; scalar_t__ key; } ;
struct aead_request {scalar_t__ iv; scalar_t__ cryptlen; scalar_t__ assoclen; } ;
struct aead_edesc {int * hw_desc; } ;


 unsigned int CMD_FIFO_LOAD ;
 unsigned int FIFOLD_CLASS_CLASS1 ;
 unsigned int FIFOLD_TYPE_FLUSH1 ;
 unsigned int FIFOLD_TYPE_IV ;
 unsigned int FIFOLD_TYPE_LAST1 ;
 unsigned int GCM_AES_IV_SIZE ;
 int IMM ;
 unsigned int IMMEDIATE ;
 int REG3 ;
 int ZERO ;
 int append_cmd (int *,unsigned int) ;
 int append_data (int *,scalar_t__,unsigned int) ;
 int append_math_add_imm_u32 (int *,int ,int ,int ,scalar_t__) ;
 struct caam_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int init_aead_job (struct aead_request*,struct aead_edesc*,int,int) ;

__attribute__((used)) static void init_gcm_job(struct aead_request *req,
    struct aead_edesc *edesc,
    bool all_contig, bool encrypt)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 struct caam_ctx *ctx = crypto_aead_ctx(aead);
 unsigned int ivsize = crypto_aead_ivsize(aead);
 u32 *desc = edesc->hw_desc;
 bool generic_gcm = (ivsize == GCM_AES_IV_SIZE);
 unsigned int last;

 init_aead_job(req, edesc, all_contig, encrypt);
 append_math_add_imm_u32(desc, REG3, ZERO, IMM, req->assoclen);


 last = 0;
 if (encrypt && generic_gcm && !(req->assoclen + req->cryptlen))
  last = FIFOLD_TYPE_LAST1;


 append_cmd(desc, CMD_FIFO_LOAD | FIFOLD_CLASS_CLASS1 | IMMEDIATE |
    FIFOLD_TYPE_IV | FIFOLD_TYPE_FLUSH1 | GCM_AES_IV_SIZE | last);

 if (!generic_gcm)
  append_data(desc, ctx->key + ctx->cdata.keylen, 4);

 append_data(desc, req->iv, ivsize);

}
