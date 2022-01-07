
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int device; } ;


 int put_device (int *) ;

__attribute__((used)) static inline void fw_device_put(struct fw_device *device)
{
 put_device(&device->device);
}
