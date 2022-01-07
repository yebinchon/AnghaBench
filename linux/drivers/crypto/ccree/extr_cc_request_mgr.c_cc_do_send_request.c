
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_req_mgr_handle {size_t req_queue_head; int req_queue_tail; unsigned int max_used_sw_slots; unsigned int q_free_slots; struct cc_hw_desc compl_desc; struct cc_crypto_req* req_queue; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_crypto_req {int dummy; } ;


 int EINPROGRESS ;
 int MAX_REQUEST_QUEUE_SIZE ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int enqueue_seq (struct cc_drvdata*,struct cc_hw_desc*,int) ;
 int wmb () ;

__attribute__((used)) static int cc_do_send_request(struct cc_drvdata *drvdata,
         struct cc_crypto_req *cc_req,
         struct cc_hw_desc *desc, unsigned int len,
    bool add_comp)
{
 struct cc_req_mgr_handle *req_mgr_h = drvdata->request_mgr_handle;
 unsigned int used_sw_slots;
 unsigned int total_seq_len = len;
 struct device *dev = drvdata_to_dev(drvdata);

 used_sw_slots = ((req_mgr_h->req_queue_head -
     req_mgr_h->req_queue_tail) &
    (MAX_REQUEST_QUEUE_SIZE - 1));
 if (used_sw_slots > req_mgr_h->max_used_sw_slots)
  req_mgr_h->max_used_sw_slots = used_sw_slots;


 req_mgr_h->req_queue[req_mgr_h->req_queue_head] = *cc_req;
 req_mgr_h->req_queue_head = (req_mgr_h->req_queue_head + 1) &
        (MAX_REQUEST_QUEUE_SIZE - 1);


 dev_dbg(dev, "Enqueue request head=%u\n", req_mgr_h->req_queue_head);






 wmb();



 enqueue_seq(drvdata, desc, len);

 if (add_comp) {
  enqueue_seq(drvdata, &req_mgr_h->compl_desc, 1);
  total_seq_len++;
 }

 if (req_mgr_h->q_free_slots < total_seq_len) {




  dev_err(dev, "HW free slot count mismatch.");
  req_mgr_h->q_free_slots = 0;
 } else {

  req_mgr_h->q_free_slots -= total_seq_len;
 }


 return -EINPROGRESS;
}
