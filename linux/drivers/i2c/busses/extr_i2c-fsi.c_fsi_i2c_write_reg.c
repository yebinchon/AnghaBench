
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_device {int dummy; } ;
typedef int data_be ;
typedef int __be32 ;


 int cpu_to_be32p (int *) ;
 int fsi_device_write (struct fsi_device*,unsigned int,int *,int) ;

__attribute__((used)) static int fsi_i2c_write_reg(struct fsi_device *fsi, unsigned int reg,
        u32 *data)
{
 __be32 data_be = cpu_to_be32p(data);

 return fsi_device_write(fsi, reg, &data_be, sizeof(data_be));
}
