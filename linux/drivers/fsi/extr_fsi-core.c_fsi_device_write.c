
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct fsi_device {size_t size; size_t addr; int slave; } ;


 int EINVAL ;
 int fsi_slave_write (int ,size_t,void const*,size_t) ;

int fsi_device_write(struct fsi_device *dev, uint32_t addr, const void *val,
  size_t size)
{
 if (addr > dev->size || size > dev->size || addr > dev->size - size)
  return -EINVAL;

 return fsi_slave_write(dev->slave, dev->addr + addr, val, size);
}
