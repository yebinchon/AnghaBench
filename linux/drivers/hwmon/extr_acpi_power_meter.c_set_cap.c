
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long value; } ;
union acpi_object {TYPE_2__ integer; int member_0; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {unsigned long max_cap; unsigned long min_cap; } ;
struct acpi_power_meter_resource {unsigned long cap; int lock; TYPE_3__* acpi_dev; TYPE_1__ caps; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {struct acpi_power_meter_resource* driver_data; } ;
typedef int ssize_t ;
typedef int acpi_status ;
struct TYPE_6__ {int handle; } ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 unsigned long DIV_ROUND_CLOSEST (unsigned long,int) ;
 int EINVAL ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t set_cap(struct device *dev, struct device_attribute *devattr,
         const char *buf, size_t count)
{
 struct acpi_device *acpi_dev = to_acpi_device(dev);
 struct acpi_power_meter_resource *resource = acpi_dev->driver_data;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list args = { 1, &arg0 };
 int res;
 unsigned long temp;
 unsigned long long data;
 acpi_status status;

 res = kstrtoul(buf, 10, &temp);
 if (res)
  return res;

 temp = DIV_ROUND_CLOSEST(temp, 1000);
 if (temp > resource->caps.max_cap || temp < resource->caps.min_cap)
  return -EINVAL;
 arg0.integer.value = temp;

 mutex_lock(&resource->lock);
 status = acpi_evaluate_integer(resource->acpi_dev->handle, "_SHL",
           &args, &data);
 if (!ACPI_FAILURE(status))
  resource->cap = temp;
 mutex_unlock(&resource->lock);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _SHL"));
  return -EINVAL;
 }


 if (data)
  return -EINVAL;

 return count;
}
