
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; } ;
struct dm_arg_set {int argc; } ;
struct dm_arg {int max; char* error; int min; } ;
struct clone {int flags; struct dm_target* ti; } ;


 int DM_CLONE_DISCARD_PASSDOWN ;
 int DM_CLONE_HYDRATION_ENABLED ;
 int EINVAL ;
 int __clear_bit (int ,int *) ;
 int dm_read_arg_group (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_feature_args(struct dm_arg_set *as, struct clone *clone)
{
 int r;
 unsigned int argc;
 const char *arg_name;
 struct dm_target *ti = clone->ti;

 const struct dm_arg args = {
  .min = 0,
  .max = 2,
  .error = "Invalid number of feature arguments"
 };


 if (!as->argc)
  return 0;

 r = dm_read_arg_group(&args, as, &argc, &ti->error);
 if (r)
  return r;

 while (argc) {
  arg_name = dm_shift_arg(as);
  argc--;

  if (!strcasecmp(arg_name, "no_hydration")) {
   __clear_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags);
  } else if (!strcasecmp(arg_name, "no_discard_passdown")) {
   __clear_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags);
  } else {
   ti->error = "Invalid feature argument";
   return -EINVAL;
  }
 }

 return 0;
}
