
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct cc_drvdata {scalar_t__ hw_rev; int std_bodies; struct cc_aead_handle* aead_handle; } ;
struct TYPE_6__ {int cra_driver_name; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct cc_crypto_alg {TYPE_2__ aead_alg; int entry; struct cc_drvdata* drvdata; } ;
struct cc_aead_handle {scalar_t__ sram_workspace_addr; int aead_list; } ;
struct TYPE_8__ {scalar_t__ min_hw_rev; int std_body; int driver_name; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct cc_crypto_alg*) ;
 int MAX_HMAC_DIGEST_SIZE ;
 scalar_t__ NULL_SRAM_ADDR ;
 int PTR_ERR (struct cc_crypto_alg*) ;
 TYPE_3__* aead_algs ;
 int cc_aead_free (struct cc_drvdata*) ;
 struct cc_crypto_alg* cc_create_aead_alg (TYPE_3__*,struct device*) ;
 scalar_t__ cc_sram_alloc (struct cc_drvdata*,int ) ;
 int crypto_register_aead (TYPE_2__*) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int kfree (struct cc_crypto_alg*) ;
 struct cc_aead_handle* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

int cc_aead_alloc(struct cc_drvdata *drvdata)
{
 struct cc_aead_handle *aead_handle;
 struct cc_crypto_alg *t_alg;
 int rc = -ENOMEM;
 int alg;
 struct device *dev = drvdata_to_dev(drvdata);

 aead_handle = kmalloc(sizeof(*aead_handle), GFP_KERNEL);
 if (!aead_handle) {
  rc = -ENOMEM;
  goto fail0;
 }

 INIT_LIST_HEAD(&aead_handle->aead_list);
 drvdata->aead_handle = aead_handle;

 aead_handle->sram_workspace_addr = cc_sram_alloc(drvdata,
        MAX_HMAC_DIGEST_SIZE);

 if (aead_handle->sram_workspace_addr == NULL_SRAM_ADDR) {
  dev_err(dev, "SRAM pool exhausted\n");
  rc = -ENOMEM;
  goto fail1;
 }


 for (alg = 0; alg < ARRAY_SIZE(aead_algs); alg++) {
  if ((aead_algs[alg].min_hw_rev > drvdata->hw_rev) ||
      !(drvdata->std_bodies & aead_algs[alg].std_body))
   continue;

  t_alg = cc_create_aead_alg(&aead_algs[alg], dev);
  if (IS_ERR(t_alg)) {
   rc = PTR_ERR(t_alg);
   dev_err(dev, "%s alg allocation failed\n",
    aead_algs[alg].driver_name);
   goto fail1;
  }
  t_alg->drvdata = drvdata;
  rc = crypto_register_aead(&t_alg->aead_alg);
  if (rc) {
   dev_err(dev, "%s alg registration failed\n",
    t_alg->aead_alg.base.cra_driver_name);
   goto fail2;
  } else {
   list_add_tail(&t_alg->entry, &aead_handle->aead_list);
   dev_dbg(dev, "Registered %s\n",
    t_alg->aead_alg.base.cra_driver_name);
  }
 }

 return 0;

fail2:
 kfree(t_alg);
fail1:
 cc_aead_free(drvdata);
fail0:
 return rc;
}
