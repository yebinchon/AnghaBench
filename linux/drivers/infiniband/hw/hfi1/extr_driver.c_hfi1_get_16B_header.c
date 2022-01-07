
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int dummy; } ;
struct hfi1_16b_header {int dummy; } ;
typedef int __le32 ;


 scalar_t__ hfi1_get_header (struct hfi1_ctxtdata*,int *) ;

__attribute__((used)) static inline struct hfi1_16b_header
  *hfi1_get_16B_header(struct hfi1_ctxtdata *rcd,
         __le32 *rhf_addr)
{
 return (struct hfi1_16b_header *)hfi1_get_header(rcd, rhf_addr);
}
