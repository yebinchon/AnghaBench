
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dcp {int caps; int dcp_clk; int * thread; } ;


 int ARRAY_SIZE (int ) ;
 size_t DCP_CHAN_CRYPTO ;
 size_t DCP_CHAN_HASH_SHA ;
 int MXS_DCP_CAPABILITY1_AES128 ;
 int MXS_DCP_CAPABILITY1_SHA1 ;
 int MXS_DCP_CAPABILITY1_SHA256 ;
 int clk_disable_unprepare (int ) ;
 int crypto_unregister_ahash (int *) ;
 int crypto_unregister_algs (int ,int ) ;
 int dcp_aes_algs ;
 int dcp_sha1_alg ;
 int dcp_sha256_alg ;
 int * global_sdcp ;
 int kthread_stop (int ) ;
 struct dcp* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;

__attribute__((used)) static int mxs_dcp_remove(struct platform_device *pdev)
{
 struct dcp *sdcp = platform_get_drvdata(pdev);

 if (sdcp->caps & MXS_DCP_CAPABILITY1_SHA256)
  crypto_unregister_ahash(&dcp_sha256_alg);

 if (sdcp->caps & MXS_DCP_CAPABILITY1_SHA1)
  crypto_unregister_ahash(&dcp_sha1_alg);

 if (sdcp->caps & MXS_DCP_CAPABILITY1_AES128)
  crypto_unregister_algs(dcp_aes_algs, ARRAY_SIZE(dcp_aes_algs));

 kthread_stop(sdcp->thread[DCP_CHAN_HASH_SHA]);
 kthread_stop(sdcp->thread[DCP_CHAN_CRYPTO]);

 clk_disable_unprepare(sdcp->dcp_clk);

 platform_set_drvdata(pdev, ((void*)0));

 global_sdcp = ((void*)0);

 return 0;
}
