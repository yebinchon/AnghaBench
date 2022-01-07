
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pd_uinfo {TYPE_1__* async_req; } ;
struct crypto4xx_device {struct pd_uinfo* pdr_uinfo; struct ce_pd* pdr; } ;
struct ce_pd {int dummy; } ;
struct TYPE_2__ {int tfm; } ;





 int crypto4xx_aead_done (struct crypto4xx_device*,struct pd_uinfo*,struct ce_pd*) ;
 int crypto4xx_ahash_done (struct crypto4xx_device*,struct pd_uinfo*) ;
 int crypto4xx_cipher_done (struct crypto4xx_device*,struct pd_uinfo*,struct ce_pd*) ;
 int crypto_tfm_alg_type (int ) ;

__attribute__((used)) static void crypto4xx_pd_done(struct crypto4xx_device *dev, u32 idx)
{
 struct ce_pd *pd = &dev->pdr[idx];
 struct pd_uinfo *pd_uinfo = &dev->pdr_uinfo[idx];

 switch (crypto_tfm_alg_type(pd_uinfo->async_req->tfm)) {
 case 128:
  crypto4xx_cipher_done(dev, pd_uinfo, pd);
  break;
 case 130:
  crypto4xx_aead_done(dev, pd_uinfo, pd);
  break;
 case 129:
  crypto4xx_ahash_done(dev, pd_uinfo);
  break;
 }
}
