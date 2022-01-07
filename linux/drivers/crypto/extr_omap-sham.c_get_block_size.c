
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_reqctx {int flags; } ;


 int FLAGS_MODE_MASK ;






 int SHA1_BLOCK_SIZE ;
 int SHA256_BLOCK_SIZE ;
 int SHA512_BLOCK_SIZE ;

__attribute__((used)) static int get_block_size(struct omap_sham_reqctx *ctx)
{
 int d;

 switch (ctx->flags & FLAGS_MODE_MASK) {
 case 133:
 case 132:
  d = SHA1_BLOCK_SIZE;
  break;
 case 131:
 case 130:
  d = SHA256_BLOCK_SIZE;
  break;
 case 129:
 case 128:
  d = SHA512_BLOCK_SIZE;
  break;
 default:
  d = 0;
 }

 return d;
}
