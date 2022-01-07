
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ib_other_headers {int dummy; } ;
struct TYPE_3__ {struct ib_other_headers oth; } ;
struct TYPE_4__ {TYPE_1__ l; struct ib_other_headers oth; } ;
struct hfi1_16b_header {TYPE_2__ u; } ;


 scalar_t__ IB_OPCODE_UD_SEND_ONLY ;
 scalar_t__ OPA_16B_L4_FM ;
 scalar_t__ OPA_16B_L4_IB_LOCAL ;
 int* hdr_len_by_opcode ;
 scalar_t__ hfi1_16B_get_l4 (struct hfi1_16b_header*) ;
 scalar_t__ ib_bth_get_opcode (struct ib_other_headers*) ;

__attribute__((used)) static u8 __get_16b_hdr_len(struct hfi1_16b_header *hdr)
{
 struct ib_other_headers *ohdr = ((void*)0);
 u8 opcode;
 u8 l4 = hfi1_16B_get_l4(hdr);

 if (l4 == OPA_16B_L4_FM) {
  opcode = IB_OPCODE_UD_SEND_ONLY;
  return (8 + 8);
 }

 if (l4 == OPA_16B_L4_IB_LOCAL)
  ohdr = &hdr->u.oth;
 else
  ohdr = &hdr->u.l.oth;

 opcode = ib_bth_get_opcode(ohdr);
 return hdr_len_by_opcode[opcode] == 0 ?
        0 : hdr_len_by_opcode[opcode] - (12 + 8 + 8);
}
