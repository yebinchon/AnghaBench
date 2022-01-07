
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opa_vnic_grp_stats {int s_64; int s_65_127; int s_128_255; int s_256_511; int s_512_1023; int s_1024_1518; int s_1519_max; } ;



__attribute__((used)) static inline void update_len_counters(struct opa_vnic_grp_stats *grp,
           int len)
{

 if (len >= 1515)
  grp->s_1519_max++;
 else if (len >= 1020)
  grp->s_1024_1518++;
 else if (len >= 508)
  grp->s_512_1023++;
 else if (len >= 252)
  grp->s_256_511++;
 else if (len >= 124)
  grp->s_128_255++;
 else if (len >= 61)
  grp->s_65_127++;
 else
  grp->s_64++;
}
