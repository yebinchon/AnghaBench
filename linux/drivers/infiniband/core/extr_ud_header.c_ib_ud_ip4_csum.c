
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iphdr {int ihl; int version; int daddr; int saddr; scalar_t__ check; int protocol; int ttl; int frag_off; int id; int tot_len; int tos; } ;
struct TYPE_2__ {int daddr; int saddr; int protocol; int ttl; int frag_off; int id; int tot_len; int tos; } ;
struct ib_ud_header {TYPE_1__ ip4; } ;
typedef int __sum16 ;


 int ip_fast_csum (int *,int) ;

__sum16 ib_ud_ip4_csum(struct ib_ud_header *header)
{
 struct iphdr iph;

 iph.ihl = 5;
 iph.version = 4;
 iph.tos = header->ip4.tos;
 iph.tot_len = header->ip4.tot_len;
 iph.id = header->ip4.id;
 iph.frag_off = header->ip4.frag_off;
 iph.ttl = header->ip4.ttl;
 iph.protocol = header->ip4.protocol;
 iph.check = 0;
 iph.saddr = header->ip4.saddr;
 iph.daddr = header->ip4.daddr;

 return ip_fast_csum((u8 *)&iph, iph.ihl);
}
