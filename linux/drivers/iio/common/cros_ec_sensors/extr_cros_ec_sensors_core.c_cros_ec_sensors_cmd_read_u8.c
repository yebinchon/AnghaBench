
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cros_ec_device {int (* cmd_readmem ) (struct cros_ec_device*,unsigned int,int,int *) ;} ;


 int stub1 (struct cros_ec_device*,unsigned int,int,int *) ;

__attribute__((used)) static int cros_ec_sensors_cmd_read_u8(struct cros_ec_device *ec,
           unsigned int offset, u8 *dest)
{
 return ec->cmd_readmem(ec, offset, 1, dest);
}
