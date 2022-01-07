
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ dst_port; int flags; scalar_t__ dst_addr; int protocol; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;
struct filter {TYPE_2__ u; int type; } ;


 int FILTER_FIELD_5TUP_DST_AD ;
 int FILTER_FIELD_5TUP_DST_PT ;
 int FILTER_FIELD_5TUP_PROTO ;
 int FILTER_IPV4_5TUPLE ;
 int PROTO_UDP ;

__attribute__((used)) static inline void usnic_fwd_init_udp_filter(struct filter *filter,
      uint32_t daddr, uint16_t dport)
{
 filter->type = FILTER_IPV4_5TUPLE;
 filter->u.ipv4.flags = FILTER_FIELD_5TUP_PROTO;
 filter->u.ipv4.protocol = PROTO_UDP;

 if (daddr) {
  filter->u.ipv4.flags |= FILTER_FIELD_5TUP_DST_AD;
  filter->u.ipv4.dst_addr = daddr;
 }

 if (dport) {
  filter->u.ipv4.flags |= FILTER_FIELD_5TUP_DST_PT;
  filter->u.ipv4.dst_port = dport;
 }
}
