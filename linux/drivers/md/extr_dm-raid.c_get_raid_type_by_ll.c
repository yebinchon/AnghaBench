
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int const level; int const algorithm; } ;


 int ARRAY_SIZE (struct raid_type*) ;
 scalar_t__ __got_raid10 (struct raid_type*,int const) ;
 struct raid_type* raid_types ;

__attribute__((used)) static struct raid_type *get_raid_type_by_ll(const int level, const int layout)
{
 struct raid_type *rtp = raid_types + ARRAY_SIZE(raid_types);

 while (rtp-- > raid_types) {

  if (rtp->level == level &&
      (__got_raid10(rtp, layout) || rtp->algorithm == layout))
   return rtp;
 }

 return ((void*)0);
}
