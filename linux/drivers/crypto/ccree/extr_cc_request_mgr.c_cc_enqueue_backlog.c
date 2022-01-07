
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cc_req_mgr_handle {int comptask; int bl_lock; int bl_len; int backlog; } ;
struct cc_drvdata {struct cc_req_mgr_handle* request_mgr_handle; } ;
struct cc_bl_item {int list; } ;


 int dev_dbg (struct device*,char*,int ) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void cc_enqueue_backlog(struct cc_drvdata *drvdata,
          struct cc_bl_item *bli)
{
 struct cc_req_mgr_handle *mgr = drvdata->request_mgr_handle;
 struct device *dev = drvdata_to_dev(drvdata);

 spin_lock_bh(&mgr->bl_lock);
 list_add_tail(&bli->list, &mgr->backlog);
 ++mgr->bl_len;
 dev_dbg(dev, "+++bl len: %d\n", mgr->bl_len);
 spin_unlock_bh(&mgr->bl_lock);
 tasklet_schedule(&mgr->comptask);
}
