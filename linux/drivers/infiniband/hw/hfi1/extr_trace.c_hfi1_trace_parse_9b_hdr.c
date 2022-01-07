
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ib_header {int dummy; } ;


 int ib_get_dlid (struct ib_header*) ;
 int ib_get_len (struct ib_header*) ;
 int ib_get_lnh (struct ib_header*) ;
 int ib_get_lver (struct ib_header*) ;
 int ib_get_sc (struct ib_header*) ;
 int ib_get_sl (struct ib_header*) ;
 int ib_get_slid (struct ib_header*) ;

void hfi1_trace_parse_9b_hdr(struct ib_header *hdr, bool sc5,
        u8 *lnh, u8 *lver, u8 *sl, u8 *sc,
        u16 *len, u32 *dlid, u32 *slid)
{
 *lnh = ib_get_lnh(hdr);
 *lver = ib_get_lver(hdr);
 *sl = ib_get_sl(hdr);
 *sc = ib_get_sc(hdr) | (sc5 << 4);
 *len = ib_get_len(hdr);
 *dlid = ib_get_dlid(hdr);
 *slid = ib_get_slid(hdr);
}
