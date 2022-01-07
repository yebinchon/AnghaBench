
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; int proto_version; int usnic_id; int ethtype; } ;
struct TYPE_3__ {TYPE_2__ usnic; } ;
struct filter {TYPE_1__ u; int type; } ;


 int ETH_P_IBOE ;
 int FILTER_FIELD_USNIC_ETHTYPE ;
 int FILTER_FIELD_USNIC_ID ;
 int FILTER_FIELD_USNIC_PROTO ;
 int FILTER_USNIC_ID ;
 int USNIC_PROTO_VER ;
 int USNIC_ROCE_GRH_VER ;
 int USNIC_ROCE_GRH_VER_SHIFT ;

__attribute__((used)) static inline void usnic_fwd_init_usnic_filter(struct filter *filter,
      uint32_t usnic_id)
{
 filter->type = FILTER_USNIC_ID;
 filter->u.usnic.ethtype = ETH_P_IBOE;
 filter->u.usnic.flags = FILTER_FIELD_USNIC_ETHTYPE |
    FILTER_FIELD_USNIC_ID |
    FILTER_FIELD_USNIC_PROTO;
 filter->u.usnic.proto_version = (USNIC_ROCE_GRH_VER <<
      USNIC_ROCE_GRH_VER_SHIFT) |
      USNIC_PROTO_VER;
 filter->u.usnic.usnic_id = usnic_id;
}
