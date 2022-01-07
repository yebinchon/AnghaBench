
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct applesmc_entry {scalar_t__ len; int key; } ;
struct TYPE_2__ {int mutex; } ;


 int APPLESMC_READ_CMD ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_smc (int ,int ,scalar_t__*,scalar_t__) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static int applesmc_read_entry(const struct applesmc_entry *entry,
          u8 *buf, u8 len)
{
 int ret;

 if (entry->len != len)
  return -EINVAL;
 mutex_lock(&smcreg.mutex);
 ret = read_smc(APPLESMC_READ_CMD, entry->key, buf, len);
 mutex_unlock(&smcreg.mutex);

 return ret;
}
