
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cc_req_mgr_handle {int comptask; int workq; scalar_t__ max_used_sw_slots; scalar_t__ min_free_hw_slots; scalar_t__ hw_queue_size; scalar_t__ dummy_comp_buff_dma; int dummy_comp_buff; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;


 int destroy_workqueue (int ) ;
 int dev_dbg (struct device*,char*,scalar_t__) ;
 int dma_free_coherent (struct device*,int,int ,scalar_t__) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int flush_workqueue (int ) ;
 int kzfree (struct cc_req_mgr_handle*) ;
 int tasklet_kill (int *) ;

void cc_req_mgr_fini(struct cc_drvdata *drvdata)
{
 struct cc_req_mgr_handle *req_mgr_h = drvdata->request_mgr_handle;
 struct device *dev = drvdata_to_dev(drvdata);

 if (!req_mgr_h)
  return;

 if (req_mgr_h->dummy_comp_buff_dma) {
  dma_free_coherent(dev, sizeof(u32), req_mgr_h->dummy_comp_buff,
      req_mgr_h->dummy_comp_buff_dma);
 }

 dev_dbg(dev, "max_used_hw_slots=%d\n", (req_mgr_h->hw_queue_size -
      req_mgr_h->min_free_hw_slots));
 dev_dbg(dev, "max_used_sw_slots=%d\n", req_mgr_h->max_used_sw_slots);






 tasklet_kill(&req_mgr_h->comptask);

 kzfree(req_mgr_h);
 drvdata->request_mgr_handle = ((void*)0);
}
