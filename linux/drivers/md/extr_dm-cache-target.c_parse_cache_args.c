
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {int argc; char** argv; } ;
struct cache_args {int dummy; } ;


 int parse_block_size (struct cache_args*,struct dm_arg_set*,char**) ;
 int parse_cache_dev (struct cache_args*,struct dm_arg_set*,char**) ;
 int parse_features (struct cache_args*,struct dm_arg_set*,char**) ;
 int parse_metadata_dev (struct cache_args*,struct dm_arg_set*,char**) ;
 int parse_origin_dev (struct cache_args*,struct dm_arg_set*,char**) ;
 int parse_policy (struct cache_args*,struct dm_arg_set*,char**) ;

__attribute__((used)) static int parse_cache_args(struct cache_args *ca, int argc, char **argv,
       char **error)
{
 int r;
 struct dm_arg_set as;

 as.argc = argc;
 as.argv = argv;

 r = parse_metadata_dev(ca, &as, error);
 if (r)
  return r;

 r = parse_cache_dev(ca, &as, error);
 if (r)
  return r;

 r = parse_origin_dev(ca, &as, error);
 if (r)
  return r;

 r = parse_block_size(ca, &as, error);
 if (r)
  return r;

 r = parse_features(ca, &as, error);
 if (r)
  return r;

 r = parse_policy(ca, &as, error);
 if (r)
  return r;

 return 0;
}
