
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct listen_ctx {TYPE_1__* lsk; } ;
struct cpl_close_listsvr_rpl {scalar_t__ status; } ;
struct chtls_dev {int tids; } ;
struct TYPE_2__ {int sk_family; } ;


 scalar_t__ CPL_ERR_NONE ;
 int CPL_RET_BUF_DONE ;
 unsigned int GET_TID (struct cpl_close_listsvr_rpl*) ;
 int RSS_HDR ;
 int THIS_MODULE ;
 struct cpl_close_listsvr_rpl* cplhdr (struct sk_buff*) ;
 int cxgb4_free_stid (int ,unsigned int,int ) ;
 int kfree (struct listen_ctx*) ;
 void* lookup_stid (int ,unsigned int) ;
 int module_put (int ) ;
 int pr_info (char*,scalar_t__,unsigned int) ;
 int sock_put (TYPE_1__*) ;

__attribute__((used)) static int chtls_close_listsrv_rpl(struct chtls_dev *cdev, struct sk_buff *skb)
{
 struct cpl_close_listsvr_rpl *rpl = cplhdr(skb) + RSS_HDR;
 struct listen_ctx *listen_ctx;
 unsigned int stid;
 void *data;

 stid = GET_TID(rpl);
 data = lookup_stid(cdev->tids, stid);
 listen_ctx = (struct listen_ctx *)data;

 if (rpl->status != CPL_ERR_NONE) {
  pr_info("Unexpected CLOSE_LISTSRV_RPL status %u for STID %u\n",
   rpl->status, stid);
  return CPL_RET_BUF_DONE;
 }

 cxgb4_free_stid(cdev->tids, stid, listen_ctx->lsk->sk_family);
 sock_put(listen_ctx->lsk);
 kfree(listen_ctx);
 module_put(THIS_MODULE);

 return 0;
}
