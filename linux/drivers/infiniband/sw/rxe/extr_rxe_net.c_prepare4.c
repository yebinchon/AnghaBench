
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct rxe_qp {int src_port; } ;
struct rxe_pkt_info {struct rxe_qp* qp; } ;
struct TYPE_10__ {int hop_limit; int traffic_class; } ;
struct in_addr {int s_addr; } ;
struct TYPE_8__ {struct in_addr sin_addr; } ;
struct TYPE_9__ {TYPE_3__ _sockaddr_in; } ;
struct TYPE_6__ {struct in_addr sin_addr; } ;
struct TYPE_7__ {TYPE_1__ _sockaddr_in; } ;
struct rxe_av {TYPE_5__ grh; TYPE_4__ dgid_addr; TYPE_2__ sgid_addr; } ;
struct dst_entry {int dummy; } ;
typedef int __be16 ;


 int EHOSTUNREACH ;
 int IPPROTO_UDP ;
 int IP_DF ;
 int ROCE_V2_UDP_DPORT ;
 int cpu_to_be16 (int ) ;
 int dst_release (struct dst_entry*) ;
 int htons (int ) ;
 int pr_err (char*) ;
 int prepare_ipv4_hdr (struct dst_entry*,struct sk_buff*,int ,int ,int ,int ,int ,int ,int) ;
 int prepare_udp_hdr (struct sk_buff*,int ,int ) ;
 struct dst_entry* rxe_find_route (int ,struct rxe_qp*,struct rxe_av*) ;
 struct rxe_av* rxe_get_av (struct rxe_pkt_info*) ;

__attribute__((used)) static int prepare4(struct rxe_pkt_info *pkt, struct sk_buff *skb)
{
 struct rxe_qp *qp = pkt->qp;
 struct dst_entry *dst;
 bool xnet = 0;
 __be16 df = htons(IP_DF);
 struct rxe_av *av = rxe_get_av(pkt);
 struct in_addr *saddr = &av->sgid_addr._sockaddr_in.sin_addr;
 struct in_addr *daddr = &av->dgid_addr._sockaddr_in.sin_addr;

 dst = rxe_find_route(skb->dev, qp, av);
 if (!dst) {
  pr_err("Host not reachable\n");
  return -EHOSTUNREACH;
 }

 prepare_udp_hdr(skb, cpu_to_be16(qp->src_port),
   cpu_to_be16(ROCE_V2_UDP_DPORT));

 prepare_ipv4_hdr(dst, skb, saddr->s_addr, daddr->s_addr, IPPROTO_UDP,
    av->grh.traffic_class, av->grh.hop_limit, df, xnet);

 dst_release(dst);
 return 0;
}
