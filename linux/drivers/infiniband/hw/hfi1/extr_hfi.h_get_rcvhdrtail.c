
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_ctxtdata {int * rcvhdrtail_kvaddr; } ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static inline u32 get_rcvhdrtail(const struct hfi1_ctxtdata *rcd)
{




 return (u32)le64_to_cpu(*rcd->rcvhdrtail_kvaddr);
}
