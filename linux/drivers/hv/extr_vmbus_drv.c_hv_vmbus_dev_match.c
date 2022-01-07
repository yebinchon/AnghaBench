
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_vmbus_device_id {int guid; } ;
typedef int guid_t ;


 scalar_t__ guid_equal (int *,int const*) ;
 int guid_is_null (int *) ;

__attribute__((used)) static const struct hv_vmbus_device_id *
hv_vmbus_dev_match(const struct hv_vmbus_device_id *id, const guid_t *guid)
{
 if (id == ((void*)0))
  return ((void*)0);

 for (; !guid_is_null(&id->guid); id++)
  if (guid_equal(&id->guid, guid))
   return id;

 return ((void*)0);
}
