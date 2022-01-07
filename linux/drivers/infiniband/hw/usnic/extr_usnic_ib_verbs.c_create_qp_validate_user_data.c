
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ trans_type; } ;
struct usnic_ib_create_qp_cmd {TYPE_1__ spec; } ;


 int EINVAL ;
 scalar_t__ USNIC_TRANSPORT_MAX ;
 scalar_t__ USNIC_TRANSPORT_UNKNOWN ;

__attribute__((used)) static int create_qp_validate_user_data(struct usnic_ib_create_qp_cmd cmd)
{
 if (cmd.spec.trans_type <= USNIC_TRANSPORT_UNKNOWN ||
   cmd.spec.trans_type >= USNIC_TRANSPORT_MAX)
  return -EINVAL;

 return 0;
}
