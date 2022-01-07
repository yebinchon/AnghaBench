
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int qd_idx; int disks; scalar_t__ ddf_layout; } ;



__attribute__((used)) static inline int raid6_d0(struct stripe_head *sh)
{
 if (sh->ddf_layout)

  return 0;

 if (sh->qd_idx == sh->disks - 1)
  return 0;
 else
  return sh->qd_idx + 1;
}
