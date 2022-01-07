
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct talitos_private {int features; } ;
struct talitos_ctx {int dummy; } ;
struct TYPE_6__ {int decrypt; int encrypt; int setkey; } ;
struct crypto_alg {int cra_alignmask; int cra_ctxsize; int cra_flags; scalar_t__ cra_priority; int cra_module; int cra_name; void* cra_exit; int cra_init; TYPE_1__ cra_ablkcipher; int * cra_type; } ;
struct TYPE_8__ {struct crypto_alg base; } ;
struct TYPE_9__ {int init; int export; int import; int setkey; int digest; int finup; int final; int update; TYPE_3__ halg; } ;
struct TYPE_7__ {int decrypt; int encrypt; int setkey; int init; struct crypto_alg base; } ;
struct TYPE_10__ {TYPE_4__ hash; TYPE_2__ aead; struct crypto_alg crypto; } ;
struct talitos_alg_template {int type; int desc_hdr_template; scalar_t__ priority; TYPE_5__ alg; } ;
struct talitos_crypto_alg {struct device* dev; struct talitos_alg_template algt; } ;
struct device {int dummy; } ;


 int CRYPTO_ALG_KERN_DRIVER_ONLY ;



 int DESC_HDR_MODE0_MDEU_SHA256 ;
 int DESC_HDR_SEL0_MDEUA ;
 int DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 struct talitos_crypto_alg* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ TALITOS_CRA_PRIORITY ;
 int TALITOS_FTR_HMAC_OK ;
 int TALITOS_FTR_SHA224_HWINIT ;
 int THIS_MODULE ;
 int ablkcipher_decrypt ;
 int ablkcipher_encrypt ;
 int ablkcipher_setkey ;
 int aead_decrypt ;
 int aead_encrypt ;
 int aead_setkey ;
 int ahash_digest ;
 int ahash_export ;
 int ahash_final ;
 int ahash_finup ;
 int ahash_import ;
 int ahash_init ;
 int ahash_init_sha224_swinit ;
 int ahash_setkey ;
 int ahash_update ;
 int crypto_ablkcipher_type ;
 int dev_err (struct device*,char*,int) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int devm_kfree (struct device*,struct talitos_crypto_alg*) ;
 struct talitos_crypto_alg* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ has_ftr_sec1 (struct talitos_private*) ;
 int strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;
 void* talitos_cra_exit ;
 int talitos_cra_init ;
 int talitos_cra_init_aead ;
 int talitos_cra_init_ahash ;

__attribute__((used)) static struct talitos_crypto_alg *talitos_alg_alloc(struct device *dev,
          struct talitos_alg_template
                 *template)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 struct talitos_crypto_alg *t_alg;
 struct crypto_alg *alg;

 t_alg = devm_kzalloc(dev, sizeof(struct talitos_crypto_alg),
        GFP_KERNEL);
 if (!t_alg)
  return ERR_PTR(-ENOMEM);

 t_alg->algt = *template;

 switch (t_alg->algt.type) {
 case 130:
  alg = &t_alg->algt.alg.crypto;
  alg->cra_init = talitos_cra_init;
  alg->cra_exit = talitos_cra_exit;
  alg->cra_type = &crypto_ablkcipher_type;
  alg->cra_ablkcipher.setkey = alg->cra_ablkcipher.setkey ?:
          ablkcipher_setkey;
  alg->cra_ablkcipher.encrypt = ablkcipher_encrypt;
  alg->cra_ablkcipher.decrypt = ablkcipher_decrypt;
  break;
 case 129:
  alg = &t_alg->algt.alg.aead.base;
  alg->cra_exit = talitos_cra_exit;
  t_alg->algt.alg.aead.init = talitos_cra_init_aead;
  t_alg->algt.alg.aead.setkey = t_alg->algt.alg.aead.setkey ?:
           aead_setkey;
  t_alg->algt.alg.aead.encrypt = aead_encrypt;
  t_alg->algt.alg.aead.decrypt = aead_decrypt;
  if (!(priv->features & TALITOS_FTR_SHA224_HWINIT) &&
      !strncmp(alg->cra_name, "authenc(hmac(sha224)", 20)) {
   devm_kfree(dev, t_alg);
   return ERR_PTR(-ENOTSUPP);
  }
  break;
 case 128:
  alg = &t_alg->algt.alg.hash.halg.base;
  alg->cra_init = talitos_cra_init_ahash;
  alg->cra_exit = talitos_cra_exit;
  t_alg->algt.alg.hash.init = ahash_init;
  t_alg->algt.alg.hash.update = ahash_update;
  t_alg->algt.alg.hash.final = ahash_final;
  t_alg->algt.alg.hash.finup = ahash_finup;
  t_alg->algt.alg.hash.digest = ahash_digest;
  if (!strncmp(alg->cra_name, "hmac", 4))
   t_alg->algt.alg.hash.setkey = ahash_setkey;
  t_alg->algt.alg.hash.import = ahash_import;
  t_alg->algt.alg.hash.export = ahash_export;

  if (!(priv->features & TALITOS_FTR_HMAC_OK) &&
      !strncmp(alg->cra_name, "hmac", 4)) {
   devm_kfree(dev, t_alg);
   return ERR_PTR(-ENOTSUPP);
  }
  if (!(priv->features & TALITOS_FTR_SHA224_HWINIT) &&
      (!strcmp(alg->cra_name, "sha224") ||
       !strcmp(alg->cra_name, "hmac(sha224)"))) {
   t_alg->algt.alg.hash.init = ahash_init_sha224_swinit;
   t_alg->algt.desc_hdr_template =
     DESC_HDR_TYPE_COMMON_NONSNOOP_NO_AFEU |
     DESC_HDR_SEL0_MDEUA |
     DESC_HDR_MODE0_MDEU_SHA256;
  }
  break;
 default:
  dev_err(dev, "unknown algorithm type %d\n", t_alg->algt.type);
  devm_kfree(dev, t_alg);
  return ERR_PTR(-EINVAL);
 }

 alg->cra_module = THIS_MODULE;
 if (t_alg->algt.priority)
  alg->cra_priority = t_alg->algt.priority;
 else
  alg->cra_priority = TALITOS_CRA_PRIORITY;
 if (has_ftr_sec1(priv))
  alg->cra_alignmask = 3;
 else
  alg->cra_alignmask = 0;
 alg->cra_ctxsize = sizeof(struct talitos_ctx);
 alg->cra_flags |= CRYPTO_ALG_KERN_DRIVER_ONLY;

 t_alg->dev = dev;

 return t_alg;
}
