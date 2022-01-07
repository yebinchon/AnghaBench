
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applesmc_entry {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int PTR_ERR (struct applesmc_entry const*) ;
 struct applesmc_entry* applesmc_get_entry_by_key (char const*) ;

__attribute__((used)) static int applesmc_has_key(const char *key, bool *value)
{
 const struct applesmc_entry *entry;

 entry = applesmc_get_entry_by_key(key);
 if (IS_ERR(entry) && PTR_ERR(entry) != -EINVAL)
  return PTR_ERR(entry);

 *value = !IS_ERR(entry);
 return 0;
}
