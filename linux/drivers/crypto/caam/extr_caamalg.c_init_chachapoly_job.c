
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_aead {int dummy; } ;
struct aead_request {unsigned int assoclen; int iv; } ;
struct aead_edesc {int* hw_desc; } ;


 unsigned int CHACHAPOLY_IV_SIZE ;
 int IMM ;
 int LDST_CLASS_1_CCB ;
 int LDST_OFFSET_SHIFT ;
 int LDST_SRCDST_BYTE_CONTEXT ;
 int REG3 ;
 int ZERO ;
 int append_load_as_imm (int*,int ,unsigned int,int) ;
 int append_math_add_imm_u32 (int*,int ,int ,int ,unsigned int) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int init_aead_job (struct aead_request*,struct aead_edesc*,int,int) ;

__attribute__((used)) static void init_chachapoly_job(struct aead_request *req,
    struct aead_edesc *edesc, bool all_contig,
    bool encrypt)
{
 struct crypto_aead *aead = crypto_aead_reqtfm(req);
 unsigned int ivsize = crypto_aead_ivsize(aead);
 unsigned int assoclen = req->assoclen;
 u32 *desc = edesc->hw_desc;
 u32 ctx_iv_off = 4;

 init_aead_job(req, edesc, all_contig, encrypt);

 if (ivsize != CHACHAPOLY_IV_SIZE) {

  ctx_iv_off += 4;





  assoclen -= ivsize;
 }

 append_math_add_imm_u32(desc, REG3, ZERO, IMM, assoclen);





 append_load_as_imm(desc, req->iv, ivsize, LDST_CLASS_1_CCB |
      LDST_SRCDST_BYTE_CONTEXT |
      ctx_iv_off << LDST_OFFSET_SHIFT);
}
