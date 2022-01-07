
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_device {int dummy; } ;
typedef int data_be ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int fsi_device_read (struct fsi_device*,unsigned int,int *,int) ;

__attribute__((used)) static int fsi_i2c_read_reg(struct fsi_device *fsi, unsigned int reg,
       u32 *data)
{
 int rc;
 __be32 data_be;

 rc = fsi_device_read(fsi, reg, &data_be, sizeof(data_be));
 if (rc)
  return rc;

 *data = be32_to_cpu(data_be);

 return 0;
}
