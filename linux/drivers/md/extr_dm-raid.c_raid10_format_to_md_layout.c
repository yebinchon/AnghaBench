
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_set {int ctr_flags; } ;


 unsigned int ALGORITHM_RAID10_DEFAULT ;
 unsigned int ALGORITHM_RAID10_FAR ;
 unsigned int ALGORITHM_RAID10_NEAR ;
 unsigned int ALGORITHM_RAID10_OFFSET ;
 int EINVAL ;
 unsigned int RAID10_FAR_COPIES_SHIFT ;
 unsigned int RAID10_OFFSET ;
 unsigned int RAID10_USE_FAR_SETS ;
 int __CTR_FLAG_RAID10_USE_NEAR_SETS ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid10_format_to_md_layout(struct raid_set *rs,
          unsigned int algorithm,
          unsigned int copies)
{
 unsigned int n = 1, f = 1, r = 0;
 if (algorithm == ALGORITHM_RAID10_DEFAULT ||
     algorithm == ALGORITHM_RAID10_NEAR)
  n = copies;

 else if (algorithm == ALGORITHM_RAID10_OFFSET) {
  f = copies;
  r = RAID10_OFFSET;
  if (!test_bit(__CTR_FLAG_RAID10_USE_NEAR_SETS, &rs->ctr_flags))
   r |= RAID10_USE_FAR_SETS;

 } else if (algorithm == ALGORITHM_RAID10_FAR) {
  f = copies;
  r = !RAID10_OFFSET;
  if (!test_bit(__CTR_FLAG_RAID10_USE_NEAR_SETS, &rs->ctr_flags))
   r |= RAID10_USE_FAR_SETS;

 } else
  return -EINVAL;

 return r | (f << RAID10_FAR_COPIES_SHIFT) | n;
}
