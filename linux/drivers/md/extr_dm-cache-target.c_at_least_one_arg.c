
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {int argc; } ;



__attribute__((used)) static bool at_least_one_arg(struct dm_arg_set *as, char **error)
{
 if (!as->argc) {
  *error = "Insufficient args";
  return 0;
 }

 return 1;
}
