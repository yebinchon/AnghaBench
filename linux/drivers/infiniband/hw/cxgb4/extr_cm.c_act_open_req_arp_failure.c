
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_12__ {TYPE_5__* dev; int local_addr; TYPE_1__ remote_addr; } ;
struct c4iw_ep {int atid; TYPE_6__ com; } ;
struct TYPE_9__ {int tids; int * ports; } ;
struct TYPE_10__ {TYPE_3__ lldi; } ;
struct TYPE_11__ {TYPE_4__ rdev; int atids; } ;


 scalar_t__ AF_INET6 ;
 int DEAD ;
 int EHOSTUNREACH ;
 int FAKE_CPL_PUT_EP_SAFE ;
 int __state_set (TYPE_6__*,int ) ;
 int connect_reply_upcall (struct c4iw_ep*,int ) ;
 int cxgb4_clip_release (int ,int const*,int) ;
 int cxgb4_free_atid (int ,int ) ;
 int pr_err (char*) ;
 int queue_arp_failure_cpl (struct c4iw_ep*,struct sk_buff*,int ) ;
 int xa_erase_irq (int *,int ) ;

__attribute__((used)) static void act_open_req_arp_failure(void *handle, struct sk_buff *skb)
{
 struct c4iw_ep *ep = handle;

 pr_err("ARP failure during connect\n");
 connect_reply_upcall(ep, -EHOSTUNREACH);
 __state_set(&ep->com, DEAD);
 if (ep->com.remote_addr.ss_family == AF_INET6) {
  struct sockaddr_in6 *sin6 =
   (struct sockaddr_in6 *)&ep->com.local_addr;
  cxgb4_clip_release(ep->com.dev->rdev.lldi.ports[0],
       (const u32 *)&sin6->sin6_addr.s6_addr, 1);
 }
 xa_erase_irq(&ep->com.dev->atids, ep->atid);
 cxgb4_free_atid(ep->com.dev->rdev.lldi.tids, ep->atid);
 queue_arp_failure_cpl(ep, skb, FAKE_CPL_PUT_EP_SAFE);
}
