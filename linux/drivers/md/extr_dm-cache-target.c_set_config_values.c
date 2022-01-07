
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int dummy; } ;


 int DMWARN (char*) ;
 int EINVAL ;
 int set_config_value (struct cache*,char const*,char const*) ;

__attribute__((used)) static int set_config_values(struct cache *cache, int argc, const char **argv)
{
 int r = 0;

 if (argc & 1) {
  DMWARN("Odd number of policy arguments given but they should be <key> <value> pairs.");
  return -EINVAL;
 }

 while (argc) {
  r = set_config_value(cache, argv[0], argv[1]);
  if (r)
   break;

  argc -= 2;
  argv += 2;
 }

 return r;
}
