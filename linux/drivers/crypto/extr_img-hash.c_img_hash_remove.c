
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct img_hash_dev {int sys_clk; int hash_clk; int dma_lch; int dma_task; int done_task; int list; } ;
struct TYPE_2__ {int lock; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (int ) ;
 TYPE_1__ img_hash ;
 int img_unregister_algs (struct img_hash_dev*) ;
 int list_del (int *) ;
 struct img_hash_dev* platform_get_drvdata (struct platform_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int img_hash_remove(struct platform_device *pdev)
{
 struct img_hash_dev *hdev;

 hdev = platform_get_drvdata(pdev);
 spin_lock(&img_hash.lock);
 list_del(&hdev->list);
 spin_unlock(&img_hash.lock);

 img_unregister_algs(hdev);

 tasklet_kill(&hdev->done_task);
 tasklet_kill(&hdev->dma_task);

 dma_release_channel(hdev->dma_lch);

 clk_disable_unprepare(hdev->hash_clk);
 clk_disable_unprepare(hdev->sys_clk);

 return 0;
}
