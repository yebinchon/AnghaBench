
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct artpec6_crypto {int dma_cache; int timer; int task; } ;


 int ARRAY_SIZE (int ) ;
 int aead_algos ;
 int artpec6_crypto_disable_hw (struct artpec6_crypto*) ;
 int artpec6_crypto_free_debugfs () ;
 int crypto_algos ;
 int crypto_unregister_aeads (int ,int ) ;
 int crypto_unregister_ahashes (int ,int ) ;
 int crypto_unregister_skciphers (int ,int ) ;
 int del_timer_sync (int *) ;
 int devm_free_irq (int *,int,struct artpec6_crypto*) ;
 int hash_algos ;
 int kmem_cache_destroy (int ) ;
 struct artpec6_crypto* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int artpec6_crypto_remove(struct platform_device *pdev)
{
 struct artpec6_crypto *ac = platform_get_drvdata(pdev);
 int irq = platform_get_irq(pdev, 0);

 crypto_unregister_ahashes(hash_algos, ARRAY_SIZE(hash_algos));
 crypto_unregister_skciphers(crypto_algos, ARRAY_SIZE(crypto_algos));
 crypto_unregister_aeads(aead_algos, ARRAY_SIZE(aead_algos));

 tasklet_disable(&ac->task);
 devm_free_irq(&pdev->dev, irq, ac);
 tasklet_kill(&ac->task);
 del_timer_sync(&ac->timer);

 artpec6_crypto_disable_hw(ac);

 kmem_cache_destroy(ac->dma_cache);



 return 0;
}
