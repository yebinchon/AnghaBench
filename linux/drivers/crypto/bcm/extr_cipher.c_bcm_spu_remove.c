
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_12__ {char* cra_driver_name; } ;
struct TYPE_17__ {TYPE_3__ base; } ;
struct TYPE_10__ {char* cra_driver_name; } ;
struct TYPE_11__ {TYPE_1__ base; } ;
struct TYPE_16__ {TYPE_2__ halg; } ;
struct TYPE_15__ {char* cra_driver_name; } ;
struct TYPE_13__ {TYPE_8__ aead; TYPE_7__ hash; TYPE_6__ crypto; } ;
struct TYPE_14__ {int registered; int type; TYPE_4__ alg; } ;


 int ARRAY_SIZE (TYPE_5__*) ;



 int crypto_unregister_aead (TYPE_8__*) ;
 int crypto_unregister_ahash (TYPE_7__*) ;
 int crypto_unregister_alg (TYPE_6__*) ;
 int dev_dbg (struct device*,char*,char*) ;
 TYPE_5__* driver_algs ;
 int spu_free_debugfs () ;
 int spu_mb_release (struct platform_device*) ;

__attribute__((used)) static int bcm_spu_remove(struct platform_device *pdev)
{
 int i;
 struct device *dev = &pdev->dev;
 char *cdn;

 for (i = 0; i < ARRAY_SIZE(driver_algs); i++) {





  if (!driver_algs[i].registered)
   continue;

  switch (driver_algs[i].type) {
  case 130:
   crypto_unregister_alg(&driver_algs[i].alg.crypto);
   dev_dbg(dev, "  unregistered cipher %s\n",
    driver_algs[i].alg.crypto.cra_driver_name);
   driver_algs[i].registered = 0;
   break;
  case 128:
   crypto_unregister_ahash(&driver_algs[i].alg.hash);
   cdn = driver_algs[i].alg.hash.halg.base.cra_driver_name;
   dev_dbg(dev, "  unregistered hash %s\n", cdn);
   driver_algs[i].registered = 0;
   break;
  case 129:
   crypto_unregister_aead(&driver_algs[i].alg.aead);
   dev_dbg(dev, "  unregistered aead %s\n",
    driver_algs[i].alg.aead.base.cra_driver_name);
   driver_algs[i].registered = 0;
   break;
  }
 }
 spu_free_debugfs();
 spu_mb_release(pdev);
 return 0;
}
