
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct vlan_ethhdr {int h_vlan_TCI; } ;
struct tcphdr {int doff; int seq; } ;
struct ipv6hdr {int payload_len; } ;
struct iphdr {int tot_len; } ;
struct i40iw_puda_completion_info {int vlan_valid; scalar_t__ payload_len; scalar_t__ l3proto; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct i40iw_puda_buf {int vlan_id; int maclen; int ipv4; int totallen; int tcphlen; int datalen; int hdrlen; int seqnum; int * tcph; int * data; int * iph; TYPE_1__ mem; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_INVALID_SIZE ;
 int VLAN_VID_MASK ;
 scalar_t__ htons (int) ;
 int i40iw_pr_err (char*,scalar_t__,scalar_t__) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

enum i40iw_status_code i40iw_puda_get_tcpip_info(struct i40iw_puda_completion_info *info,
       struct i40iw_puda_buf *buf)
{
 struct iphdr *iph;
 struct ipv6hdr *ip6h;
 struct tcphdr *tcph;
 u16 iphlen;
 u16 pkt_len;
 u8 *mem = (u8 *)buf->mem.va;
 struct ethhdr *ethh = (struct ethhdr *)buf->mem.va;

 if (ethh->h_proto == htons(0x8100)) {
  info->vlan_valid = 1;
  buf->vlan_id = ntohs(((struct vlan_ethhdr *)ethh)->h_vlan_TCI) & VLAN_VID_MASK;
 }
 buf->maclen = (info->vlan_valid) ? 18 : 14;
 iphlen = (info->l3proto) ? 40 : 20;
 buf->ipv4 = (info->l3proto) ? 0 : 1;
 buf->iph = mem + buf->maclen;
 iph = (struct iphdr *)buf->iph;

 buf->tcph = buf->iph + iphlen;
 tcph = (struct tcphdr *)buf->tcph;

 if (buf->ipv4) {
  pkt_len = ntohs(iph->tot_len);
 } else {
  ip6h = (struct ipv6hdr *)buf->iph;
  pkt_len = ntohs(ip6h->payload_len) + iphlen;
 }

 buf->totallen = pkt_len + buf->maclen;

 if (info->payload_len < buf->totallen) {
  i40iw_pr_err("payload_len = 0x%x totallen expected0x%x\n",
        info->payload_len, buf->totallen);
  return I40IW_ERR_INVALID_SIZE;
 }

 buf->tcphlen = (tcph->doff) << 2;
 buf->datalen = pkt_len - iphlen - buf->tcphlen;
 buf->data = (buf->datalen) ? buf->tcph + buf->tcphlen : ((void*)0);
 buf->hdrlen = buf->maclen + iphlen + buf->tcphlen;
 buf->seqnum = ntohl(tcph->seq);
 return 0;
}
