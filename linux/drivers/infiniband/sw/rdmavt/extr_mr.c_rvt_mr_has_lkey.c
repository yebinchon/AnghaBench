
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvt_mregion {scalar_t__ lkey; } ;



bool rvt_mr_has_lkey(struct rvt_mregion *mr, u32 lkey)
{
 return mr && lkey == mr->lkey;
}
