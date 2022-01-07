
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ib_other_headers {int dummy; } ;


 int ib_bth_get_ackreq (struct ib_other_headers*) ;
 int ib_bth_get_becn (struct ib_other_headers*) ;
 int ib_bth_get_fecn (struct ib_other_headers*) ;
 int ib_bth_get_migreq (struct ib_other_headers*) ;
 int ib_bth_get_opcode (struct ib_other_headers*) ;
 int ib_bth_get_pad (struct ib_other_headers*) ;
 int ib_bth_get_pkey (struct ib_other_headers*) ;
 int ib_bth_get_psn (struct ib_other_headers*) ;
 int ib_bth_get_qpn (struct ib_other_headers*) ;
 int ib_bth_get_se (struct ib_other_headers*) ;
 int ib_bth_get_tver (struct ib_other_headers*) ;
 int mask_psn (int ) ;

void hfi1_trace_parse_9b_bth(struct ib_other_headers *ohdr,
        u8 *ack, bool *becn, bool *fecn, u8 *mig,
        u8 *se, u8 *pad, u8 *opcode, u8 *tver,
        u16 *pkey, u32 *psn, u32 *qpn)
{
 *ack = ib_bth_get_ackreq(ohdr);
 *becn = ib_bth_get_becn(ohdr);
 *fecn = ib_bth_get_fecn(ohdr);
 *mig = ib_bth_get_migreq(ohdr);
 *se = ib_bth_get_se(ohdr);
 *pad = ib_bth_get_pad(ohdr);
 *opcode = ib_bth_get_opcode(ohdr);
 *tver = ib_bth_get_tver(ohdr);
 *pkey = ib_bth_get_pkey(ohdr);
 *psn = mask_psn(ib_bth_get_psn(ohdr));
 *qpn = ib_bth_get_qpn(ohdr);
}
