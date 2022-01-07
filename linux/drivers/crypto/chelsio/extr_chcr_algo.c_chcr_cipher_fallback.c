
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int SYNC_SKCIPHER_REQUEST_ON_STACK (int ,struct crypto_sync_skcipher*) ;
 int crypto_skcipher_decrypt (int ) ;
 int crypto_skcipher_encrypt (int ) ;
 int skcipher_request_set_callback (int ,int ,int *,int *) ;
 int skcipher_request_set_crypt (int ,struct scatterlist*,struct scatterlist*,unsigned int,int *) ;
 int skcipher_request_set_sync_tfm (int ,struct crypto_sync_skcipher*) ;
 int skcipher_request_zero (int ) ;
 int subreq ;

__attribute__((used)) static int chcr_cipher_fallback(struct crypto_sync_skcipher *cipher,
    u32 flags,
    struct scatterlist *src,
    struct scatterlist *dst,
    unsigned int nbytes,
    u8 *iv,
    unsigned short op_type)
{
 int err;

 SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, cipher);

 skcipher_request_set_sync_tfm(subreq, cipher);
 skcipher_request_set_callback(subreq, flags, ((void*)0), ((void*)0));
 skcipher_request_set_crypt(subreq, src, dst,
       nbytes, iv);

 err = op_type ? crypto_skcipher_decrypt(subreq) :
  crypto_skcipher_encrypt(subreq);
 skcipher_request_zero(subreq);

 return err;

}
