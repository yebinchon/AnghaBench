
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int device; } ;


 int get_device (int *) ;

__attribute__((used)) static inline struct fw_device *fw_device_get(struct fw_device *device)
{
 get_device(&device->device);

 return device;
}
