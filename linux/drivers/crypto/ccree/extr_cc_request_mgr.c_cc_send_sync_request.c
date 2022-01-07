
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_req_mgr_handle {int hw_lock; } ;
struct cc_hw_desc {int dummy; } ;
struct cc_drvdata {int hw_queue_avail; struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_crypto_req {int seq_compl; int * user_arg; int user_cb; } ;


 int EAGAIN ;
 int EINPROGRESS ;
 int cc_do_send_request (struct cc_drvdata*,struct cc_crypto_req*,struct cc_hw_desc*,unsigned int,int) ;
 int cc_pm_get (struct device*) ;
 int cc_pm_put_suspend (struct device*) ;
 int cc_queues_status (struct cc_drvdata*,struct cc_req_mgr_handle*,unsigned int) ;
 int dev_err (struct device*,char*,int) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int init_completion (int *) ;
 int reinit_completion (int *) ;
 int request_mgr_complete ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wait_for_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;

int cc_send_sync_request(struct cc_drvdata *drvdata,
    struct cc_crypto_req *cc_req, struct cc_hw_desc *desc,
    unsigned int len)
{
 int rc;
 struct device *dev = drvdata_to_dev(drvdata);
 struct cc_req_mgr_handle *mgr = drvdata->request_mgr_handle;

 init_completion(&cc_req->seq_compl);
 cc_req->user_cb = request_mgr_complete;
 cc_req->user_arg = &cc_req->seq_compl;

 rc = cc_pm_get(dev);
 if (rc) {
  dev_err(dev, "ssi_power_mgr_runtime_get returned %x\n", rc);
  return rc;
 }

 while (1) {
  spin_lock_bh(&mgr->hw_lock);
  rc = cc_queues_status(drvdata, mgr, len + 1);

  if (!rc)
   break;

  spin_unlock_bh(&mgr->hw_lock);
  if (rc != -EAGAIN) {
   cc_pm_put_suspend(dev);
   return rc;
  }
  wait_for_completion_interruptible(&drvdata->hw_queue_avail);
  reinit_completion(&drvdata->hw_queue_avail);
 }

 rc = cc_do_send_request(drvdata, cc_req, desc, len, 1);
 spin_unlock_bh(&mgr->hw_lock);

 if (rc != -EINPROGRESS) {
  cc_pm_put_suspend(dev);
  return rc;
 }

 wait_for_completion(&cc_req->seq_compl);
 return 0;
}
