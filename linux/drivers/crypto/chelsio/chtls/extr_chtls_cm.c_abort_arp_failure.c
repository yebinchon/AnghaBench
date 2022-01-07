
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cpl_abort_req {int cmd; } ;
struct chtls_dev {TYPE_1__* lldi; } ;
struct TYPE_2__ {int * ports; } ;


 int CPL_ABORT_NO_RST ;
 struct cpl_abort_req* cplhdr (struct sk_buff*) ;
 int cxgb4_ofld_send (int ,struct sk_buff*) ;

__attribute__((used)) static void abort_arp_failure(void *handle, struct sk_buff *skb)
{
 struct cpl_abort_req *req = cplhdr(skb);
 struct chtls_dev *cdev;

 cdev = (struct chtls_dev *)handle;
 req->cmd = CPL_ABORT_NO_RST;
 cxgb4_ofld_send(cdev->lldi->ports[0], skb);
}
