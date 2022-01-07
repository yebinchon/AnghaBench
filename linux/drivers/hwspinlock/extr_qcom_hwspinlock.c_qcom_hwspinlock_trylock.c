
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct regmap_field {int dummy; } ;
struct hwspinlock {struct regmap_field* priv; } ;


 scalar_t__ QCOM_MUTEX_APPS_PROC_ID ;
 int regmap_field_read (struct regmap_field*,scalar_t__*) ;
 int regmap_field_write (struct regmap_field*,scalar_t__) ;

__attribute__((used)) static int qcom_hwspinlock_trylock(struct hwspinlock *lock)
{
 struct regmap_field *field = lock->priv;
 u32 lock_owner;
 int ret;

 ret = regmap_field_write(field, QCOM_MUTEX_APPS_PROC_ID);
 if (ret)
  return ret;

 ret = regmap_field_read(field, &lock_owner);
 if (ret)
  return ret;

 return lock_owner == QCOM_MUTEX_APPS_PROC_ID;
}
