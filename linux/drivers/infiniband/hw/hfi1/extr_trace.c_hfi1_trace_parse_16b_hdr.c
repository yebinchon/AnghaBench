
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct hfi1_16b_header {int dummy; } ;


 int hfi1_16B_get_age (struct hfi1_16b_header*) ;
 int hfi1_16B_get_becn (struct hfi1_16b_header*) ;
 int hfi1_16B_get_dlid (struct hfi1_16b_header*) ;
 int hfi1_16B_get_entropy (struct hfi1_16b_header*) ;
 int hfi1_16B_get_fecn (struct hfi1_16b_header*) ;
 int hfi1_16B_get_l4 (struct hfi1_16b_header*) ;
 int hfi1_16B_get_len (struct hfi1_16b_header*) ;
 int hfi1_16B_get_pkey (struct hfi1_16b_header*) ;
 int hfi1_16B_get_rc (struct hfi1_16b_header*) ;
 int hfi1_16B_get_sc (struct hfi1_16b_header*) ;
 int hfi1_16B_get_slid (struct hfi1_16b_header*) ;

void hfi1_trace_parse_16b_hdr(struct hfi1_16b_header *hdr,
         u8 *age, bool *becn, bool *fecn,
         u8 *l4, u8 *rc, u8 *sc,
         u16 *entropy, u16 *len, u16 *pkey,
         u32 *dlid, u32 *slid)
{
 *age = hfi1_16B_get_age(hdr);
 *becn = hfi1_16B_get_becn(hdr);
 *fecn = hfi1_16B_get_fecn(hdr);
 *l4 = hfi1_16B_get_l4(hdr);
 *rc = hfi1_16B_get_rc(hdr);
 *sc = hfi1_16B_get_sc(hdr);
 *entropy = hfi1_16B_get_entropy(hdr);
 *len = hfi1_16B_get_len(hdr);
 *pkey = hfi1_16B_get_pkey(hdr);
 *dlid = hfi1_16B_get_dlid(hdr);
 *slid = hfi1_16B_get_slid(hdr);
}
