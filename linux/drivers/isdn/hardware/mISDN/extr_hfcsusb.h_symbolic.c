
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfcusb_symbolic_list {char const* name; int const num; } ;



__attribute__((used)) static inline const char *
symbolic(struct hfcusb_symbolic_list list[], const int num)
{
 int i;
 for (i = 0; list[i].name != ((void*)0); i++)
  if (list[i].num == num)
   return list[i].name;
 return "<unknown USB Error>";
}
