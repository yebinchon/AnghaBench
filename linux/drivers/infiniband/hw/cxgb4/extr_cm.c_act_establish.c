
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tid_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_act_establish {int rcv_isn; int snd_isn; int tos_atid; int tcp_opt; } ;
struct TYPE_8__ {int ss_family; } ;
struct TYPE_10__ {int mutex; int history; TYPE_4__* dev; TYPE_3__ local_addr; } ;
struct c4iw_ep {unsigned int hwtid; TYPE_5__ com; scalar_t__ retry_with_mpa_v1; int snd_wscale; void* rcv_seq; void* snd_seq; int dst; } ;
struct TYPE_6__ {struct tid_info* tids; } ;
struct TYPE_7__ {TYPE_1__ lldi; } ;
struct c4iw_dev {TYPE_2__ rdev; } ;
struct TYPE_9__ {int atids; } ;


 int ACT_ESTAB ;
 int ENOMEM ;
 unsigned int GET_TID (struct cpl_act_establish*) ;
 int GFP_KERNEL ;
 int TCPOPT_SND_WSCALE_G (unsigned short) ;
 unsigned int TID_TID_G (int ) ;
 void* be32_to_cpu (int ) ;
 int c4iw_ep_disconnect (struct c4iw_ep*,int ,int ) ;
 int connect_reply_upcall (struct c4iw_ep*,int ) ;
 struct cpl_act_establish* cplhdr (struct sk_buff*) ;
 int cxgb4_free_atid (struct tid_info*,unsigned int) ;
 int cxgb4_insert_tid (struct tid_info*,struct c4iw_ep*,unsigned int,int ) ;
 int dst_confirm (int ) ;
 int insert_ep_tid (struct c4iw_ep*) ;
 struct c4iw_ep* lookup_atid (struct tid_info*,unsigned int) ;
 int mpa_rev ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohl (int ) ;
 unsigned short ntohs (int ) ;
 int pr_debug (char*,struct c4iw_ep*,unsigned int,void*,void*) ;
 int send_flowc (struct c4iw_ep*) ;
 int send_mpa_req (struct c4iw_ep*,struct sk_buff*,int) ;
 int set_bit (int ,int *) ;
 int set_emss (struct c4iw_ep*,unsigned short) ;
 int xa_erase_irq (int *,unsigned int) ;

__attribute__((used)) static int act_establish(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct c4iw_ep *ep;
 struct cpl_act_establish *req = cplhdr(skb);
 unsigned short tcp_opt = ntohs(req->tcp_opt);
 unsigned int tid = GET_TID(req);
 unsigned int atid = TID_TID_G(ntohl(req->tos_atid));
 struct tid_info *t = dev->rdev.lldi.tids;
 int ret;

 ep = lookup_atid(t, atid);

 pr_debug("ep %p tid %u snd_isn %u rcv_isn %u\n", ep, tid,
   be32_to_cpu(req->snd_isn), be32_to_cpu(req->rcv_isn));

 mutex_lock(&ep->com.mutex);
 dst_confirm(ep->dst);


 ep->hwtid = tid;
 cxgb4_insert_tid(t, ep, tid, ep->com.local_addr.ss_family);
 insert_ep_tid(ep);

 ep->snd_seq = be32_to_cpu(req->snd_isn);
 ep->rcv_seq = be32_to_cpu(req->rcv_isn);
 ep->snd_wscale = TCPOPT_SND_WSCALE_G(tcp_opt);

 set_emss(ep, tcp_opt);


 xa_erase_irq(&ep->com.dev->atids, atid);
 cxgb4_free_atid(t, atid);
 set_bit(ACT_ESTAB, &ep->com.history);


 ret = send_flowc(ep);
 if (ret)
  goto err;
 if (ep->retry_with_mpa_v1)
  ret = send_mpa_req(ep, skb, 1);
 else
  ret = send_mpa_req(ep, skb, mpa_rev);
 if (ret)
  goto err;
 mutex_unlock(&ep->com.mutex);
 return 0;
err:
 mutex_unlock(&ep->com.mutex);
 connect_reply_upcall(ep, -ENOMEM);
 c4iw_ep_disconnect(ep, 0, GFP_KERNEL);
 return 0;
}
