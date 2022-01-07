
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {unsigned long migration_threshold; } ;


 int EINVAL ;
 int NOT_CORE_OPTION ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int process_config_option(struct cache *cache, const char *key, const char *value)
{
 unsigned long tmp;

 if (!strcasecmp(key, "migration_threshold")) {
  if (kstrtoul(value, 10, &tmp))
   return -EINVAL;

  cache->migration_threshold = tmp;
  return 0;
 }

 return NOT_CORE_OPTION;
}
