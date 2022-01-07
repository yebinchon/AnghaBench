
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cra_name; } ;
struct hash_alg_common {TYPE_1__ base; } ;
struct dcp_async_ctx {int mutex; int chan; scalar_t__ hot; scalar_t__ fill; int alg; } ;
struct crypto_ahash {int dummy; } ;
struct ahash_request {int dummy; } ;


 int DCP_CHAN_HASH_SHA ;
 int MXS_DCP_CONTROL1_HASH_SELECT_SHA1 ;
 int MXS_DCP_CONTROL1_HASH_SELECT_SHA256 ;
 struct dcp_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 struct hash_alg_common* crypto_hash_alg_common (struct crypto_ahash*) ;
 int memset (struct dcp_async_ctx*,int ,int) ;
 int mutex_init (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int dcp_sha_init(struct ahash_request *req)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct dcp_async_ctx *actx = crypto_ahash_ctx(tfm);

 struct hash_alg_common *halg = crypto_hash_alg_common(tfm);





 memset(actx, 0, sizeof(*actx));

 if (strcmp(halg->base.cra_name, "sha1") == 0)
  actx->alg = MXS_DCP_CONTROL1_HASH_SELECT_SHA1;
 else
  actx->alg = MXS_DCP_CONTROL1_HASH_SELECT_SHA256;

 actx->fill = 0;
 actx->hot = 0;
 actx->chan = DCP_CHAN_HASH_SHA;

 mutex_init(&actx->mutex);

 return 0;
}
