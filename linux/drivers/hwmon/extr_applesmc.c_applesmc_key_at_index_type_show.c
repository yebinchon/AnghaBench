
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct applesmc_entry {char* type; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct applesmc_entry const*) ;
 struct applesmc_entry* applesmc_get_entry_by_index (int ) ;
 int key_at_index ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t applesmc_key_at_index_type_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 const struct applesmc_entry *entry;

 entry = applesmc_get_entry_by_index(key_at_index);
 if (IS_ERR(entry))
  return PTR_ERR(entry);

 return snprintf(sysfsbuf, PAGE_SIZE, "%s\n", entry->type);
}
