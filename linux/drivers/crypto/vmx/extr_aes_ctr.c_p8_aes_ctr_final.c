
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; int * iv; } ;
struct p8_aes_ctr_ctx {int enc_key; } ;


 int AES_BLOCK_SIZE ;
 int aes_p8_encrypt (int *,int *,int *) ;
 int crypto_inc (int *,int) ;
 int crypto_xor_cpy (int *,int *,int *,unsigned int) ;
 int disable_kernel_vsx () ;
 int enable_kernel_vsx () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static void p8_aes_ctr_final(const struct p8_aes_ctr_ctx *ctx,
        struct skcipher_walk *walk)
{
 u8 *ctrblk = walk->iv;
 u8 keystream[AES_BLOCK_SIZE];
 u8 *src = walk->src.virt.addr;
 u8 *dst = walk->dst.virt.addr;
 unsigned int nbytes = walk->nbytes;

 preempt_disable();
 pagefault_disable();
 enable_kernel_vsx();
 aes_p8_encrypt(ctrblk, keystream, &ctx->enc_key);
 disable_kernel_vsx();
 pagefault_enable();
 preempt_enable();

 crypto_xor_cpy(dst, keystream, src, nbytes);
 crypto_inc(ctrblk, AES_BLOCK_SIZE);
}
