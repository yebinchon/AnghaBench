
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int head; int rhf_offset; scalar_t__ rcvhdrq; } ;
typedef int __le32 ;



__attribute__((used)) static inline __le32 *get_rhf_addr(struct hfi1_ctxtdata *rcd)
{
 return (__le32 *)rcd->rcvhdrq + rcd->head + rcd->rhf_offset;
}
