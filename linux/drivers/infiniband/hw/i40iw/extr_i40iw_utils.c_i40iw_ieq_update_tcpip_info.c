
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tcphdr {int seq; } ;
struct iphdr {int tot_len; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct i40iw_puda_buf {int maclen; int tcphlen; scalar_t__ ipv4; TYPE_1__ mem; } ;


 int htonl (int ) ;
 int htons (int) ;

void i40iw_ieq_update_tcpip_info(struct i40iw_puda_buf *buf, u16 length, u32 seqnum)
{
 struct tcphdr *tcph;
 struct iphdr *iph;
 u16 iphlen;
 u16 packetsize;
 u8 *addr = (u8 *)buf->mem.va;

 iphlen = (buf->ipv4) ? 20 : 40;
 iph = (struct iphdr *)(addr + buf->maclen);
 tcph = (struct tcphdr *)(addr + buf->maclen + iphlen);
 packetsize = length + buf->tcphlen + iphlen;

 iph->tot_len = htons(packetsize);
 tcph->seq = htonl(seqnum);
}
