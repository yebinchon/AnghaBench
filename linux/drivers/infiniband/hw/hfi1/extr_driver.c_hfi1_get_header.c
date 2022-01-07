
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_ctxtdata {int * rhf_offset; } ;
typedef int __le32 ;


 int rhf_hdrq_offset (int ) ;
 int rhf_to_cpu (int *) ;

__attribute__((used)) static inline void *hfi1_get_header(struct hfi1_ctxtdata *rcd,
        __le32 *rhf_addr)
{
 u32 offset = rhf_hdrq_offset(rhf_to_cpu(rhf_addr));

 return (void *)(rhf_addr - rcd->rhf_offset + offset);
}
