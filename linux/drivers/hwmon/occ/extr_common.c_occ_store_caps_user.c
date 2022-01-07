
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct occ {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct occ* dev_get_drvdata (struct device*) ;
 int div64_u64 (unsigned long long,unsigned long long) ;
 int kstrtoull (char const*,int ,unsigned long long*) ;
 int occ_set_user_power_cap (struct occ*,int ) ;

__attribute__((used)) static ssize_t occ_store_caps_user(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 int rc;
 u16 user_power_cap;
 unsigned long long value;
 struct occ *occ = dev_get_drvdata(dev);

 rc = kstrtoull(buf, 0, &value);
 if (rc)
  return rc;

 user_power_cap = div64_u64(value, 1000000ULL);

 rc = occ_set_user_power_cap(occ, user_power_cap);
 if (rc)
  return rc;

 return count;
}
