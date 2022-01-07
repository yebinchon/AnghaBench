
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_req_mgr_handle {int comptask; int compwork; int workq; } ;
struct cc_drvdata {int hw_queue_avail; struct cc_req_mgr_handle* request_mgr_handle; } ;


 int complete (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int tasklet_schedule (int *) ;

void complete_request(struct cc_drvdata *drvdata)
{
 struct cc_req_mgr_handle *request_mgr_handle =
      drvdata->request_mgr_handle;

 complete(&drvdata->hw_queue_avail);




 tasklet_schedule(&request_mgr_handle->comptask);

}
