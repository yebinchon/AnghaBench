
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HEADER_BDCOUNT_MAX ;

__attribute__((used)) static u32 flexrm_estimate_header_desc_count(u32 nhcnt)
{
 u32 hcnt = nhcnt / HEADER_BDCOUNT_MAX;

 if (!(nhcnt % HEADER_BDCOUNT_MAX))
  hcnt += 1;

 return hcnt;
}
