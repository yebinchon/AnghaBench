
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc_completed; int lock; } ;
struct mtk_hsdma_vchan {int issue_synchronize; TYPE_1__ vc; int desc_hw_processing; int issue_completion; } ;
struct dma_chan {int dummy; } ;


 int WARN_ONCE (int,char*) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct mtk_hsdma_vchan* to_hsdma_vchan (struct dma_chan*) ;
 int vchan_synchronize (TYPE_1__*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void mtk_hsdma_free_active_desc(struct dma_chan *c)
{
 struct mtk_hsdma_vchan *hvc = to_hsdma_vchan(c);
 bool sync_needed = 0;






 spin_lock(&hvc->vc.lock);
 if (!list_empty(&hvc->desc_hw_processing)) {
  hvc->issue_synchronize = 1;
  sync_needed = 1;
 }
 spin_unlock(&hvc->vc.lock);

 if (sync_needed)
  wait_for_completion(&hvc->issue_completion);




 WARN_ONCE(!list_empty(&hvc->desc_hw_processing),
    "Desc pending still in list desc_hw_processing\n");


 vchan_synchronize(&hvc->vc);

 WARN_ONCE(!list_empty(&hvc->vc.desc_completed),
    "Desc pending still in list desc_completed\n");
}
