
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_driver {int dummy; } ;
struct device_driver {int dummy; } ;
typedef size_t ssize_t ;
typedef int guid_t ;


 size_t EEXIST ;
 struct hv_driver* drv_to_hv_drv (struct device_driver*) ;
 size_t guid_parse (char const*,int *) ;
 scalar_t__ hv_vmbus_dynid_match (struct hv_driver*,int *) ;
 size_t vmbus_add_dynid (struct hv_driver*,int *) ;

__attribute__((used)) static ssize_t new_id_store(struct device_driver *driver, const char *buf,
       size_t count)
{
 struct hv_driver *drv = drv_to_hv_drv(driver);
 guid_t guid;
 ssize_t retval;

 retval = guid_parse(buf, &guid);
 if (retval)
  return retval;

 if (hv_vmbus_dynid_match(drv, &guid))
  return -EEXIST;

 retval = vmbus_add_dynid(drv, &guid);
 if (retval)
  return retval;
 return count;
}
