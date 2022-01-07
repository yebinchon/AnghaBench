
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ib_header {void** lrh; } ;


 void* cpu_to_be16 (int ) ;

__attribute__((used)) static inline void hfi1_make_ib_hdr(struct ib_header *hdr,
        u16 lrh0, u16 len,
        u16 dlid, u16 slid)
{
 hdr->lrh[0] = cpu_to_be16(lrh0);
 hdr->lrh[1] = cpu_to_be16(dlid);
 hdr->lrh[2] = cpu_to_be16(len);
 hdr->lrh[3] = cpu_to_be16(slid);
}
