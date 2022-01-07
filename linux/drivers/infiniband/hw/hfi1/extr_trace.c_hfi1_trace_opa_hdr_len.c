
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_opa_header {int opah; int ibh; int hdr_type; } ;


 int __get_16b_hdr_len (int *) ;
 int __get_ib_hdr_len (int *) ;

u8 hfi1_trace_opa_hdr_len(struct hfi1_opa_header *opa_hdr)
{
 if (!opa_hdr->hdr_type)
  return __get_ib_hdr_len(&opa_hdr->ibh);
 else
  return __get_16b_hdr_len(&opa_hdr->opah);
}
