
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fsi_device {int unit; int slave; } ;


 scalar_t__ FSI_PEEK_BASE ;
 int fsi_slave_read (int ,scalar_t__,void*,int) ;

int fsi_device_peek(struct fsi_device *dev, void *val)
{
 uint32_t addr = FSI_PEEK_BASE + ((dev->unit - 2) * sizeof(uint32_t));

 return fsi_slave_read(dev->slave, addr, val, sizeof(uint32_t));
}
