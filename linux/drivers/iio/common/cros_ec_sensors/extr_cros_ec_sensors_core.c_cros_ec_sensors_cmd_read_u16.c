
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cros_ec_device {int (* cmd_readmem ) (struct cros_ec_device*,unsigned int,int,int *) ;} ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int stub1 (struct cros_ec_device*,unsigned int,int,int *) ;

__attribute__((used)) static int cros_ec_sensors_cmd_read_u16(struct cros_ec_device *ec,
      unsigned int offset, u16 *dest)
{
 __le16 tmp;
 int ret = ec->cmd_readmem(ec, offset, 2, &tmp);

 if (ret >= 0)
  *dest = le16_to_cpu(tmp);

 return ret;
}
