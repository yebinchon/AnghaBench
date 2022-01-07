
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct qib_ctxtdata {scalar_t__ rcvhdrtail_kvaddr; } ;



__attribute__((used)) static inline void qib_clear_rcvhdrtail(const struct qib_ctxtdata *rcd)
{
 *((u64 *) rcd->rcvhdrtail_kvaddr) = 0ULL;
}
