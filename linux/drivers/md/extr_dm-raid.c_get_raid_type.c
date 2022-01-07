
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid_type {int name; } ;


 int ARRAY_SIZE (struct raid_type*) ;
 struct raid_type* raid_types ;
 int strcasecmp (int ,char const*) ;

__attribute__((used)) static struct raid_type *get_raid_type(const char *name)
{
 struct raid_type *rtp = raid_types + ARRAY_SIZE(raid_types);

 while (rtp-- > raid_types)
  if (!strcasecmp(rtp->name, name))
   return rtp;

 return ((void*)0);
}
