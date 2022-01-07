
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; int iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct skcipher_request {int dummy; } ;
struct p8_aes_cbc_ctx {int dec_key; int enc_key; int fallback; } ;
struct crypto_skcipher {int dummy; } ;


 unsigned int AES_BLOCK_SIZE ;
 int aes_p8_cbc_encrypt (int ,int ,int ,int *,int ,int) ;
 int crypto_simd_usable () ;
 struct p8_aes_cbc_ctx* crypto_skcipher_ctx (struct crypto_skcipher*) ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 struct crypto_skcipher* crypto_skcipher_reqtfm (struct skcipher_request*) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int round_down (unsigned int,unsigned int) ;
 struct skcipher_request* skcipher_request_ctx (struct skcipher_request*) ;
 int skcipher_request_set_tfm (struct skcipher_request*,int ) ;
 int skcipher_walk_done (struct skcipher_walk*,unsigned int) ;
 int skcipher_walk_virt (struct skcipher_walk*,struct skcipher_request*,int) ;

__attribute__((used)) static int p8_aes_cbc_crypt(struct skcipher_request *req, int enc)
{
 struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
 const struct p8_aes_cbc_ctx *ctx = crypto_skcipher_ctx(tfm);
 struct skcipher_walk walk;
 unsigned int nbytes;
 int ret;

 if (!crypto_simd_usable()) {
  struct skcipher_request *subreq = skcipher_request_ctx(req);

  *subreq = *req;
  skcipher_request_set_tfm(subreq, ctx->fallback);
  return enc ? crypto_skcipher_encrypt(subreq) :
        crypto_skcipher_decrypt(subreq);
 }

 ret = skcipher_walk_virt(&walk, req, 0);
 while ((nbytes = walk.nbytes) != 0) {
  preempt_disable();
  pagefault_disable();
  enable_kernel_vsx();
  aes_p8_cbc_encrypt(walk.src.virt.addr,
       walk.dst.virt.addr,
       round_down(nbytes, AES_BLOCK_SIZE),
       enc ? &ctx->enc_key : &ctx->dec_key,
       walk.iv, enc);
  disable_kernel_vsx();
  pagefault_enable();
  preempt_enable();

  ret = skcipher_walk_done(&walk, nbytes % AES_BLOCK_SIZE);
 }
 return ret;
}
