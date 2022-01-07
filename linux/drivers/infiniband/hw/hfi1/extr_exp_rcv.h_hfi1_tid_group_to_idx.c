
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tid_group {int dummy; } ;
struct hfi1_ctxtdata {struct tid_group* groups; } ;



__attribute__((used)) static inline u16
hfi1_tid_group_to_idx(struct hfi1_ctxtdata *rcd, struct tid_group *grp)
{
 return grp - &rcd->groups[0];
}
