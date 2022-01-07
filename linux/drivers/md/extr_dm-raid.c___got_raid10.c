
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int level; int algorithm; } ;






 int __is_raid10_far (int const) ;
 int __is_raid10_near (int const) ;
 int __is_raid10_offset (int const) ;

__attribute__((used)) static bool __got_raid10(struct raid_type *rtp, const int layout)
{
 if (rtp->level == 10) {
  switch (rtp->algorithm) {
  case 131:
  case 129:
   return __is_raid10_near(layout);
  case 128:
   return __is_raid10_offset(layout);
  case 130:
   return __is_raid10_far(layout);
  default:
   break;
  }
 }

 return 0;
}
