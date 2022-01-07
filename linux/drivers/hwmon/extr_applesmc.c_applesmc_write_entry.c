
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct applesmc_entry {scalar_t__ len; int key; } ;
struct TYPE_2__ {int mutex; } ;


 int APPLESMC_WRITE_CMD ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ smcreg ;
 int write_smc (int ,int ,scalar_t__ const*,scalar_t__) ;

__attribute__((used)) static int applesmc_write_entry(const struct applesmc_entry *entry,
    const u8 *buf, u8 len)
{
 int ret;

 if (entry->len != len)
  return -EINVAL;
 mutex_lock(&smcreg.mutex);
 ret = write_smc(APPLESMC_WRITE_CMD, entry->key, buf, len);
 mutex_unlock(&smcreg.mutex);
 return ret;
}
