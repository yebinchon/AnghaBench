
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_sha_info {int* tfm; int* ctrl; int* cmd; } ;
struct mtk_sha_reqctx {int flags; int ds; int ct_size; int ct_hdr; struct mtk_sha_info info; } ;


 int SHA_CMD0 ;
 int SHA_CMD1 ;
 int SHA_CMD2 ;
 int SHA_CT_CTRL_HDR ;
 int SHA_CT_SIZE ;
 int SHA_FLAGS_ALGO_MSK ;





 int SHA_TFM_CONTINUE ;
 int SHA_TFM_DIGEST (int ) ;
 int SHA_TFM_HASH ;
 int SHA_TFM_HASH_STORE ;
 int SHA_TFM_SHA1 ;
 int SHA_TFM_SHA224 ;
 int SHA_TFM_SHA256 ;
 int SHA_TFM_SHA384 ;
 int SHA_TFM_SHA512 ;
 int SHA_TFM_SIZE (int ) ;
 int SHA_TFM_START ;
 int SIZE_IN_WORDS (int ) ;

__attribute__((used)) static void mtk_sha_info_init(struct mtk_sha_reqctx *ctx)
{
 struct mtk_sha_info *info = &ctx->info;

 ctx->ct_hdr = SHA_CT_CTRL_HDR;
 ctx->ct_size = SHA_CT_SIZE;

 info->tfm[0] = SHA_TFM_HASH | SHA_TFM_SIZE(SIZE_IN_WORDS(ctx->ds));

 switch (ctx->flags & SHA_FLAGS_ALGO_MSK) {
 case 132:
  info->tfm[0] |= SHA_TFM_SHA1;
  break;
 case 131:
  info->tfm[0] |= SHA_TFM_SHA224;
  break;
 case 130:
  info->tfm[0] |= SHA_TFM_SHA256;
  break;
 case 129:
  info->tfm[0] |= SHA_TFM_SHA384;
  break;
 case 128:
  info->tfm[0] |= SHA_TFM_SHA512;
  break;

 default:

  return;
 }

 info->tfm[1] = SHA_TFM_HASH_STORE;
 info->ctrl[0] = info->tfm[0] | SHA_TFM_CONTINUE | SHA_TFM_START;
 info->ctrl[1] = info->tfm[1];

 info->cmd[0] = SHA_CMD0;
 info->cmd[1] = SHA_CMD1;
 info->cmd[2] = SHA_CMD2 | SHA_TFM_DIGEST(SIZE_IN_WORDS(ctx->ds));
}
