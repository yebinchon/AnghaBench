
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ib_other_headers {int dummy; } ;


 int ib_bth_get_ackreq (struct ib_other_headers*) ;
 int ib_bth_get_migreq (struct ib_other_headers*) ;
 int ib_bth_get_opcode (struct ib_other_headers*) ;
 int ib_bth_get_pad (struct ib_other_headers*) ;
 int ib_bth_get_psn (struct ib_other_headers*) ;
 int ib_bth_get_qpn (struct ib_other_headers*) ;
 int ib_bth_get_se (struct ib_other_headers*) ;
 int ib_bth_get_tver (struct ib_other_headers*) ;
 int mask_psn (int ) ;

void hfi1_trace_parse_16b_bth(struct ib_other_headers *ohdr,
         u8 *ack, u8 *mig, u8 *opcode,
         u8 *pad, u8 *se, u8 *tver,
         u32 *psn, u32 *qpn)
{
 *ack = ib_bth_get_ackreq(ohdr);
 *mig = ib_bth_get_migreq(ohdr);
 *opcode = ib_bth_get_opcode(ohdr);
 *pad = ib_bth_get_pad(ohdr);
 *se = ib_bth_get_se(ohdr);
 *tver = ib_bth_get_tver(ohdr);
 *psn = mask_psn(ib_bth_get_psn(ohdr));
 *qpn = ib_bth_get_qpn(ohdr);
}
