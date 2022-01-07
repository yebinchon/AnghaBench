
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct cpl_pass_establish {int rcv_isn; int snd_isn; int tcp_opt; } ;
struct TYPE_2__ {int mutex; int history; int state; } ;
struct c4iw_ep {TYPE_1__ com; int dst; int snd_wscale; void* rcv_seq; void* snd_seq; int hwtid; } ;
struct c4iw_dev {int dummy; } ;


 unsigned int GET_TID (struct cpl_pass_establish*) ;
 int GFP_KERNEL ;
 int MPA_REQ_WAIT ;
 int PASS_ESTAB ;
 int TCPOPT_SND_WSCALE_G (int ) ;
 void* be32_to_cpu (int ) ;
 int c4iw_ep_disconnect (struct c4iw_ep*,int,int ) ;
 int c4iw_put_ep (TYPE_1__*) ;
 struct cpl_pass_establish* cplhdr (struct sk_buff*) ;
 int dst_confirm (int ) ;
 struct c4iw_ep* get_ep_from_tid (struct c4iw_dev*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntohs (int ) ;
 int pr_debug (char*,struct c4iw_ep*,unsigned int,...) ;
 int send_flowc (struct c4iw_ep*) ;
 int set_bit (int ,int *) ;
 int set_emss (struct c4iw_ep*,int ) ;
 int start_ep_timer (struct c4iw_ep*) ;

__attribute__((used)) static int pass_establish(struct c4iw_dev *dev, struct sk_buff *skb)
{
 struct c4iw_ep *ep;
 struct cpl_pass_establish *req = cplhdr(skb);
 unsigned int tid = GET_TID(req);
 int ret;
 u16 tcp_opt = ntohs(req->tcp_opt);

 ep = get_ep_from_tid(dev, tid);
 pr_debug("ep %p tid %u\n", ep, ep->hwtid);
 ep->snd_seq = be32_to_cpu(req->snd_isn);
 ep->rcv_seq = be32_to_cpu(req->rcv_isn);
 ep->snd_wscale = TCPOPT_SND_WSCALE_G(tcp_opt);

 pr_debug("ep %p hwtid %u tcp_opt 0x%02x\n", ep, tid, tcp_opt);

 set_emss(ep, tcp_opt);

 dst_confirm(ep->dst);
 mutex_lock(&ep->com.mutex);
 ep->com.state = MPA_REQ_WAIT;
 start_ep_timer(ep);
 set_bit(PASS_ESTAB, &ep->com.history);
 ret = send_flowc(ep);
 mutex_unlock(&ep->com.mutex);
 if (ret)
  c4iw_ep_disconnect(ep, 1, GFP_KERNEL);
 c4iw_put_ep(&ep->com);

 return 0;
}
