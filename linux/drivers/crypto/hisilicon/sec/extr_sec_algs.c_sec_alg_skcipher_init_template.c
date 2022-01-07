
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_c_alg_cfg {int c_mode; int c_alg; int key_len; int c_width; } ;
struct sec_bd_info {int w0; int w1; int w3; int cipher_key_addr_hi; int cipher_key_addr_lo; } ;
struct sec_alg_tfm_ctx {int pkey; } ;
typedef enum sec_cipher_alg { ____Placeholder_sec_cipher_alg } sec_cipher_alg ;


 int SEC_BD_W0_C_MODE_S ;
 int SEC_BD_W0_C_WIDTH_S ;
 int SEC_BD_W1_C_ALG_S ;
 int SEC_BD_W3_C_KEY_LEN_S ;
 int lower_32_bits (int ) ;
 int memset (struct sec_bd_info*,int ,int) ;
 struct sec_c_alg_cfg* sec_c_alg_cfgs ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void sec_alg_skcipher_init_template(struct sec_alg_tfm_ctx *ctx,
        struct sec_bd_info *req,
        enum sec_cipher_alg alg)
{
 const struct sec_c_alg_cfg *cfg = &sec_c_alg_cfgs[alg];

 memset(req, 0, sizeof(*req));
 req->w0 |= cfg->c_mode << SEC_BD_W0_C_MODE_S;
 req->w1 |= cfg->c_alg << SEC_BD_W1_C_ALG_S;
 req->w3 |= cfg->key_len << SEC_BD_W3_C_KEY_LEN_S;
 req->w0 |= cfg->c_width << SEC_BD_W0_C_WIDTH_S;

 req->cipher_key_addr_lo = lower_32_bits(ctx->pkey);
 req->cipher_key_addr_hi = upper_32_bits(ctx->pkey);
}
