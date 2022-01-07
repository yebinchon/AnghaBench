
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct cc_req_mgr_handle {scalar_t__ hw_queue_size; scalar_t__ min_free_hw_slots; int compl_desc; int dummy_comp_buff_dma; int dummy_comp_buff; scalar_t__ max_used_sw_slots; int comptask; int compwork; int workq; int backlog; int bl_lock; int hw_lock; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;


 int BYPASS ;
 int CC_REG (int ) ;
 int DSCRPTR_QUEUE_SRAM_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MIN_HW_QUEUE_SIZE ;
 int NS_BIT ;
 scalar_t__ cc_ioread (struct cc_drvdata*,int ) ;
 int cc_req_mgr_fini (struct cc_drvdata*) ;
 int comp_handler ;
 int comp_work_handler ;
 int create_singlethread_workqueue (char*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int hw_desc_init (int *) ;
 struct cc_req_mgr_handle* kzalloc (int,int ) ;
 int set_din_const (int *,int ,int) ;
 int set_dout_dlli (int *,int ,int,int ,int) ;
 int set_flow_mode (int *,int ) ;
 int set_queue_last_ind (struct cc_drvdata*,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

int cc_req_mgr_init(struct cc_drvdata *drvdata)
{
 struct cc_req_mgr_handle *req_mgr_h;
 struct device *dev = drvdata_to_dev(drvdata);
 int rc = 0;

 req_mgr_h = kzalloc(sizeof(*req_mgr_h), GFP_KERNEL);
 if (!req_mgr_h) {
  rc = -ENOMEM;
  goto req_mgr_init_err;
 }

 drvdata->request_mgr_handle = req_mgr_h;

 spin_lock_init(&req_mgr_h->hw_lock);
 spin_lock_init(&req_mgr_h->bl_lock);
 INIT_LIST_HEAD(&req_mgr_h->backlog);
 dev_dbg(dev, "Initializing completion tasklet\n");
 tasklet_init(&req_mgr_h->comptask, comp_handler,
       (unsigned long)drvdata);

 req_mgr_h->hw_queue_size = cc_ioread(drvdata,
          CC_REG(DSCRPTR_QUEUE_SRAM_SIZE));
 dev_dbg(dev, "hw_queue_size=0x%08X\n", req_mgr_h->hw_queue_size);
 if (req_mgr_h->hw_queue_size < MIN_HW_QUEUE_SIZE) {
  dev_err(dev, "Invalid HW queue size = %u (Min. required is %u)\n",
   req_mgr_h->hw_queue_size, MIN_HW_QUEUE_SIZE);
  rc = -ENOMEM;
  goto req_mgr_init_err;
 }
 req_mgr_h->min_free_hw_slots = req_mgr_h->hw_queue_size;
 req_mgr_h->max_used_sw_slots = 0;


 req_mgr_h->dummy_comp_buff =
  dma_alloc_coherent(dev, sizeof(u32),
       &req_mgr_h->dummy_comp_buff_dma,
       GFP_KERNEL);
 if (!req_mgr_h->dummy_comp_buff) {
  dev_err(dev, "Not enough memory to allocate DMA (%zu) dropped buffer\n",
   sizeof(u32));
  rc = -ENOMEM;
  goto req_mgr_init_err;
 }


 hw_desc_init(&req_mgr_h->compl_desc);
 set_din_const(&req_mgr_h->compl_desc, 0, sizeof(u32));
 set_dout_dlli(&req_mgr_h->compl_desc, req_mgr_h->dummy_comp_buff_dma,
        sizeof(u32), NS_BIT, 1);
 set_flow_mode(&req_mgr_h->compl_desc, BYPASS);
 set_queue_last_ind(drvdata, &req_mgr_h->compl_desc);

 return 0;

req_mgr_init_err:
 cc_req_mgr_fini(drvdata);
 return rc;
}
