
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_sensor_attr {int func; scalar_t__ paged; } ;
struct pmbus_driver_info {int pages; int* func; } ;



__attribute__((used)) static bool pmbus_sensor_is_paged(const struct pmbus_driver_info *info,
      const struct pmbus_sensor_attr *attr)
{
 int p;

 if (attr->paged)
  return 1;
 for (p = 1; p < info->pages; p++) {
  if (info->func[p] & attr->func)
   return 1;
 }
 return 0;
}
