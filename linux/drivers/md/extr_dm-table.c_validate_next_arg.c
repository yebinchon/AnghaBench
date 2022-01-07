
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {unsigned int argc; } ;
struct dm_arg {unsigned int min; unsigned int max; char* error; } ;


 int EINVAL ;
 char* dm_shift_arg (struct dm_arg_set*) ;
 int sscanf (char const*,char*,unsigned int*,char*) ;

__attribute__((used)) static int validate_next_arg(const struct dm_arg *arg,
        struct dm_arg_set *arg_set,
        unsigned *value, char **error, unsigned grouped)
{
 const char *arg_str = dm_shift_arg(arg_set);
 char dummy;

 if (!arg_str ||
     (sscanf(arg_str, "%u%c", value, &dummy) != 1) ||
     (*value < arg->min) ||
     (*value > arg->max) ||
     (grouped && arg_set->argc < *value)) {
  *error = arg->error;
  return -EINVAL;
 }

 return 0;
}
