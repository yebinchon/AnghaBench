
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_proc_devset {scalar_t__ name; } ;


 scalar_t__ strcmp (scalar_t__,char*) ;

__attribute__((used)) static
const struct ide_proc_devset *ide_find_setting(const struct ide_proc_devset *st,
            char *name)
{
 while (st->name) {
  if (strcmp(st->name, name) == 0)
   break;
  st++;
 }
 return st->name ? st : ((void*)0);
}
