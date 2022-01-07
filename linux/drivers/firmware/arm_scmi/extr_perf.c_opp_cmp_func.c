
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scmi_opp {int perf; } ;



__attribute__((used)) static int opp_cmp_func(const void *opp1, const void *opp2)
{
 const struct scmi_opp *t1 = opp1, *t2 = opp2;

 return t1->perf - t2->perf;
}
