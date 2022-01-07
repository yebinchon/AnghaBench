
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *get_err_from_table(const char *table[], int size, int pos)
{
 if (unlikely(pos >= size))
  return "Reserved";

 if (unlikely(!table[pos]))
  return "Reserved";

 return table[pos];
}
