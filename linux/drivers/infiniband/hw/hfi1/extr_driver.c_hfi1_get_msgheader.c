
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_header {int dummy; } ;
struct hfi1_ctxtdata {int dummy; } ;
typedef int __le32 ;


 scalar_t__ hfi1_get_header (struct hfi1_ctxtdata*,int *) ;

__attribute__((used)) static inline struct ib_header *hfi1_get_msgheader(struct hfi1_ctxtdata *rcd,
         __le32 *rhf_addr)
{
 return (struct ib_header *)hfi1_get_header(rcd, rhf_addr);
}
