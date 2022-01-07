
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; } ;
struct dm_arg_set {int argc; } ;
struct dm_arg {int max; char* error; int min; } ;
struct clone {unsigned int hydration_batch_size; unsigned int hydration_threshold; struct dm_target* ti; } ;


 unsigned int DEFAULT_HYDRATION_BATCH_SIZE ;
 unsigned int DEFAULT_HYDRATION_THRESHOLD ;
 int EINVAL ;
 int dm_read_arg_group (struct dm_arg const*,struct dm_arg_set*,unsigned int*,char**) ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 scalar_t__ kstrtouint (char*,int,unsigned int*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_core_args(struct dm_arg_set *as, struct clone *clone)
{
 int r;
 unsigned int argc;
 unsigned int value;
 const char *arg_name;
 struct dm_target *ti = clone->ti;

 const struct dm_arg args = {
  .min = 0,
  .max = 4,
  .error = "Invalid number of core arguments"
 };


 clone->hydration_batch_size = DEFAULT_HYDRATION_BATCH_SIZE;
 clone->hydration_threshold = DEFAULT_HYDRATION_THRESHOLD;


 if (!as->argc)
  return 0;

 r = dm_read_arg_group(&args, as, &argc, &ti->error);
 if (r)
  return r;

 if (argc & 1) {
  ti->error = "Number of core arguments must be even";
  return -EINVAL;
 }

 while (argc) {
  arg_name = dm_shift_arg(as);
  argc -= 2;

  if (!strcasecmp(arg_name, "hydration_threshold")) {
   if (kstrtouint(dm_shift_arg(as), 10, &value)) {
    ti->error = "Invalid value for argument `hydration_threshold'";
    return -EINVAL;
   }
   clone->hydration_threshold = value;
  } else if (!strcasecmp(arg_name, "hydration_batch_size")) {
   if (kstrtouint(dm_shift_arg(as), 10, &value)) {
    ti->error = "Invalid value for argument `hydration_batch_size'";
    return -EINVAL;
   }
   clone->hydration_batch_size = value;
  } else {
   ti->error = "Invalid core argument";
   return -EINVAL;
  }
 }

 return 0;
}
