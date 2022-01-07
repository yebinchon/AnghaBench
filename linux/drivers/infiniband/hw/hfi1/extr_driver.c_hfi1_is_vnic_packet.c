
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_packet {int ebuf; TYPE_1__* rcd; } ;
struct TYPE_2__ {scalar_t__ is_vnic; } ;


 scalar_t__ OPA_16B_L2_TYPE ;
 scalar_t__ OPA_16B_L4_ETHR ;
 scalar_t__ hfi1_16B_get_l2 (int ) ;
 scalar_t__ hfi1_16B_get_l4 (int ) ;

__attribute__((used)) static inline bool hfi1_is_vnic_packet(struct hfi1_packet *packet)
{

 if (packet->rcd->is_vnic)
  return 1;

 if ((hfi1_16B_get_l2(packet->ebuf) == OPA_16B_L2_TYPE) &&
     (hfi1_16B_get_l4(packet->ebuf) == OPA_16B_L4_ETHR))
  return 1;

 return 0;
}
