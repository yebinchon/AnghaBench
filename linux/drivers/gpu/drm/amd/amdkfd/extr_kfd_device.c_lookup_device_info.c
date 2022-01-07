
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_device_info {int dummy; } ;
struct TYPE_3__ {unsigned short did; struct kfd_device_info const* device_info; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int WARN_ON (int) ;
 int dev_warn (int ,char*,unsigned short) ;
 int kfd_device ;
 TYPE_1__* supported_devices ;

__attribute__((used)) static const struct kfd_device_info *lookup_device_info(unsigned short did)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(supported_devices); i++) {
  if (supported_devices[i].did == did) {
   WARN_ON(!supported_devices[i].device_info);
   return supported_devices[i].device_info;
  }
 }

 dev_warn(kfd_device, "DID %04x is missing in supported_devices\n",
   did);

 return ((void*)0);
}
