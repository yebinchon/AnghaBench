
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tcphdr {int source; int dest; } ;
struct TYPE_7__ {int u6_addr32; } ;
struct TYPE_8__ {TYPE_3__ in6_u; } ;
struct TYPE_5__ {int u6_addr32; } ;
struct TYPE_6__ {TYPE_1__ in6_u; } ;
struct ipv6hdr {TYPE_4__ saddr; TYPE_2__ daddr; } ;
struct iphdr {int version; int saddr; int daddr; } ;
struct i40iw_sc_qp {int dummy; } ;
struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_qp {struct i40iw_sc_qp sc_qp; } ;
struct i40iw_puda_buf {scalar_t__ iph; scalar_t__ tcph; } ;
struct i40iw_device {int cm_core; } ;
struct i40iw_cm_node {struct i40iw_qp* iwqp; } ;
typedef int rem_addr ;
typedef int loc_addr ;


 int i40iw_copy_ip_ntohl (int *,int ) ;
 struct i40iw_cm_node* i40iw_find_node (int *,int ,int *,int ,int *,int,int) ;
 int memset (int *,int ,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

struct i40iw_sc_qp *i40iw_ieq_get_qp(struct i40iw_sc_dev *dev,
         struct i40iw_puda_buf *buf)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;
 struct i40iw_qp *iwqp;
 struct i40iw_cm_node *cm_node;
 u32 loc_addr[4], rem_addr[4];
 u16 loc_port, rem_port;
 struct ipv6hdr *ip6h;
 struct iphdr *iph = (struct iphdr *)buf->iph;
 struct tcphdr *tcph = (struct tcphdr *)buf->tcph;

 if (iph->version == 4) {
  memset(loc_addr, 0, sizeof(loc_addr));
  loc_addr[0] = ntohl(iph->daddr);
  memset(rem_addr, 0, sizeof(rem_addr));
  rem_addr[0] = ntohl(iph->saddr);
 } else {
  ip6h = (struct ipv6hdr *)buf->iph;
  i40iw_copy_ip_ntohl(loc_addr, ip6h->daddr.in6_u.u6_addr32);
  i40iw_copy_ip_ntohl(rem_addr, ip6h->saddr.in6_u.u6_addr32);
 }
 loc_port = ntohs(tcph->dest);
 rem_port = ntohs(tcph->source);

 cm_node = i40iw_find_node(&iwdev->cm_core, rem_port, rem_addr, loc_port,
      loc_addr, 0, 1);
 if (!cm_node)
  return ((void*)0);
 iwqp = cm_node->iwqp;
 return &iwqp->sc_qp;
}
