
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s5p_aes_dev {int use_hash; scalar_t__ clk; scalar_t__ pclk; int hash_tasklet; TYPE_1__* res; int tasklet; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int end; } ;


 int ARRAY_SIZE (int *) ;
 int ENODEV ;
 int * algs ;
 int * algs_sha1_md5_sha256 ;
 int clk_disable_unprepare (scalar_t__) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_alg (int *) ;
 struct s5p_aes_dev* platform_get_drvdata (struct platform_device*) ;
 int * s5p_dev ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int s5p_aes_remove(struct platform_device *pdev)
{
 struct s5p_aes_dev *pdata = platform_get_drvdata(pdev);
 int i;

 if (!pdata)
  return -ENODEV;

 for (i = 0; i < ARRAY_SIZE(algs); i++)
  crypto_unregister_alg(&algs[i]);

 tasklet_kill(&pdata->tasklet);
 if (pdata->use_hash) {
  for (i = ARRAY_SIZE(algs_sha1_md5_sha256) - 1; i >= 0; i--)
   crypto_unregister_ahash(&algs_sha1_md5_sha256[i]);

  pdata->res->end -= 0x300;
  tasklet_kill(&pdata->hash_tasklet);
  pdata->use_hash = 0;
 }

 if (pdata->pclk)
  clk_disable_unprepare(pdata->pclk);

 clk_disable_unprepare(pdata->clk);
 s5p_dev = ((void*)0);

 return 0;
}
