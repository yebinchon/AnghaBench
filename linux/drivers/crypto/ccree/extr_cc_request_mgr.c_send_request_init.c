
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_req_mgr_handle {int q_free_slots; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;


 int CC_REG (int ) ;
 int DSCRPTR_QUEUE_CONTENT ;
 int cc_ioread (struct cc_drvdata*,int ) ;
 int cc_queues_status (struct cc_drvdata*,struct cc_req_mgr_handle*,unsigned int) ;
 int enqueue_seq (struct cc_drvdata*,struct cc_hw_desc*,unsigned int) ;
 int set_queue_last_ind (struct cc_drvdata*,struct cc_hw_desc*) ;
 int wmb () ;

int send_request_init(struct cc_drvdata *drvdata, struct cc_hw_desc *desc,
        unsigned int len)
{
 struct cc_req_mgr_handle *req_mgr_h = drvdata->request_mgr_handle;
 unsigned int total_seq_len = len;
 int rc = 0;



 rc = cc_queues_status(drvdata, req_mgr_h, total_seq_len);
 if (rc)
  return rc;

 set_queue_last_ind(drvdata, &desc[(len - 1)]);






 wmb();
 enqueue_seq(drvdata, desc, len);


 req_mgr_h->q_free_slots =
  cc_ioread(drvdata, CC_REG(DSCRPTR_QUEUE_CONTENT));

 return 0;
}
