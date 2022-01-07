
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct applesmc_entry {int key; } ;
struct TYPE_2__ {int key_count; } ;


 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int PTR_ERR (struct applesmc_entry const*) ;
 struct applesmc_entry* applesmc_get_entry_by_index (int) ;
 TYPE_1__ smcreg ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int applesmc_get_lower_bound(unsigned int *lo, const char *key)
{
 int begin = 0, end = smcreg.key_count;
 const struct applesmc_entry *entry;

 while (begin != end) {
  int middle = begin + (end - begin) / 2;
  entry = applesmc_get_entry_by_index(middle);
  if (IS_ERR(entry)) {
   *lo = 0;
   return PTR_ERR(entry);
  }
  if (strcmp(entry->key, key) < 0)
   begin = middle + 1;
  else
   end = middle;
 }

 *lo = begin;
 return 0;
}
