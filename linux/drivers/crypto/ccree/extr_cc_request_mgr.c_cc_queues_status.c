
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_req_mgr_handle {int req_queue_tail; unsigned int q_free_slots; unsigned int min_free_hw_slots; int req_queue_head; } ;
struct cc_drvdata {int dummy; } ;


 unsigned long CC_MAX_POLL_ITER ;
 int CC_REG (int ) ;
 int DSCRPTR_QUEUE_CONTENT ;
 int ENOSPC ;
 int MAX_REQUEST_QUEUE_SIZE ;
 unsigned int cc_ioread (struct cc_drvdata*,int ) ;
 int dev_dbg (struct device*,char*,unsigned int,int,...) ;
 int dev_err (struct device*,char*,int ,int) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;

__attribute__((used)) static int cc_queues_status(struct cc_drvdata *drvdata,
       struct cc_req_mgr_handle *req_mgr_h,
       unsigned int total_seq_len)
{
 unsigned long poll_queue;
 struct device *dev = drvdata_to_dev(drvdata);





 if (((req_mgr_h->req_queue_head + 1) & (MAX_REQUEST_QUEUE_SIZE - 1)) ==
     req_mgr_h->req_queue_tail) {
  dev_err(dev, "SW FIFO is full. req_queue_head=%d sw_fifo_len=%d\n",
   req_mgr_h->req_queue_head, MAX_REQUEST_QUEUE_SIZE);
  return -ENOSPC;
 }

 if (req_mgr_h->q_free_slots >= total_seq_len)
  return 0;


 for (poll_queue = 0; poll_queue < CC_MAX_POLL_ITER ; poll_queue++) {
  req_mgr_h->q_free_slots =
   cc_ioread(drvdata, CC_REG(DSCRPTR_QUEUE_CONTENT));
  if (req_mgr_h->q_free_slots < req_mgr_h->min_free_hw_slots)
   req_mgr_h->min_free_hw_slots = req_mgr_h->q_free_slots;

  if (req_mgr_h->q_free_slots >= total_seq_len) {

   return 0;
  }

  dev_dbg(dev, "HW FIFO is full. q_free_slots=%d total_seq_len=%d\n",
   req_mgr_h->q_free_slots, total_seq_len);
 }

 dev_dbg(dev, "HW FIFO full, timeout. req_queue_head=%d sw_fifo_len=%d q_free_slots=%d total_seq_len=%d\n",
  req_mgr_h->req_queue_head, MAX_REQUEST_QUEUE_SIZE,
  req_mgr_h->q_free_slots, total_seq_len);
 return -ENOSPC;
}
