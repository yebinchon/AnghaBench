
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_ctxtdata {int rcvhdrq_cnt; int rcvhdrqentsize; } ;


 int PAGE_ALIGN (int) ;

__attribute__((used)) static inline u32 rcvhdrq_size(struct hfi1_ctxtdata *rcd)
{
 return PAGE_ALIGN(rcd->rcvhdrq_cnt *
     rcd->rcvhdrqentsize * sizeof(u32));
}
