
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct applesmc_entry {int len; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct applesmc_entry const*) ;
 int PTR_ERR (struct applesmc_entry const*) ;
 struct applesmc_entry* applesmc_get_entry_by_index (int ) ;
 int applesmc_read_entry (struct applesmc_entry const*,char*,int) ;
 int key_at_index ;

__attribute__((used)) static ssize_t applesmc_key_at_index_read_show(struct device *dev,
    struct device_attribute *attr, char *sysfsbuf)
{
 const struct applesmc_entry *entry;
 int ret;

 entry = applesmc_get_entry_by_index(key_at_index);
 if (IS_ERR(entry))
  return PTR_ERR(entry);
 ret = applesmc_read_entry(entry, sysfsbuf, entry->len);
 if (ret)
  return ret;

 return entry->len;
}
