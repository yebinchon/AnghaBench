
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int* nonce; } ;
struct TYPE_4__ {TYPE_1__ ctr; } ;
struct nx_crypto_ctx {TYPE_2__ priv; } ;
struct blkcipher_desc {int* info; int tfm; } ;


 int CTR_RFC3686_IV_SIZE ;
 int CTR_RFC3686_NONCE_SIZE ;
 struct nx_crypto_ctx* crypto_blkcipher_ctx (int ) ;
 int ctr_aes_nx_crypt (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int memcpy (int*,int*,int ) ;

__attribute__((used)) static int ctr3686_aes_nx_crypt(struct blkcipher_desc *desc,
    struct scatterlist *dst,
    struct scatterlist *src,
    unsigned int nbytes)
{
 struct nx_crypto_ctx *nx_ctx = crypto_blkcipher_ctx(desc->tfm);
 u8 iv[16];

 memcpy(iv, nx_ctx->priv.ctr.nonce, CTR_RFC3686_IV_SIZE);
 memcpy(iv + CTR_RFC3686_NONCE_SIZE,
        desc->info, CTR_RFC3686_IV_SIZE);
 iv[12] = iv[13] = iv[14] = 0;
 iv[15] = 1;

 desc->info = iv;

 return ctr_aes_nx_crypt(desc, dst, src, nbytes);
}
