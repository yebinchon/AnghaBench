
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_8__ {int addr; } ;
struct TYPE_9__ {TYPE_3__ virt; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_7__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
struct TYPE_10__ {int encrypt; int decrypt; } ;
struct aes_ctx {TYPE_5__ cword; int D; } ;


 unsigned int AES_BLOCK_SIZE ;
 struct aes_ctx* blk_aes_ctx (int ) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int padlock_reset_key (int *) ;
 int padlock_store_cword (int *) ;
 int padlock_xcrypt_ecb (int ,int ,int ,int *,unsigned int) ;

__attribute__((used)) static int ecb_aes_decrypt(struct blkcipher_desc *desc,
      struct scatterlist *dst, struct scatterlist *src,
      unsigned int nbytes)
{
 struct aes_ctx *ctx = blk_aes_ctx(desc->tfm);
 struct blkcipher_walk walk;
 int err;

 padlock_reset_key(&ctx->cword.decrypt);

 blkcipher_walk_init(&walk, dst, src, nbytes);
 err = blkcipher_walk_virt(desc, &walk);

 while ((nbytes = walk.nbytes)) {
  padlock_xcrypt_ecb(walk.src.virt.addr, walk.dst.virt.addr,
       ctx->D, &ctx->cword.decrypt,
       nbytes / AES_BLOCK_SIZE);
  nbytes &= AES_BLOCK_SIZE - 1;
  err = blkcipher_walk_done(desc, &walk, nbytes);
 }

 padlock_store_cword(&ctx->cword.encrypt);

 return err;
}
