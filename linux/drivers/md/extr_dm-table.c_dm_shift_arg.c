
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {char** argv; scalar_t__ argc; } ;



const char *dm_shift_arg(struct dm_arg_set *as)
{
 char *r;

 if (as->argc) {
  as->argc--;
  r = *as->argv;
  as->argv++;
  return r;
 }

 return ((void*)0);
}
