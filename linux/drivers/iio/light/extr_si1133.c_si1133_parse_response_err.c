
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;


 int EINVAL ;
 int EOVERFLOW ;




 int dev_warn (struct device*,char*,int ) ;

__attribute__((used)) static int si1133_parse_response_err(struct device *dev, u32 resp, u8 cmd)
{
 resp &= 0xF;

 switch (resp) {
 case 129:
  dev_warn(dev, "Output buffer overflow: %#02hhx\n", cmd);
  return -EOVERFLOW;
 case 128:
  dev_warn(dev, "Saturation of the ADC or overflow of accumulation: %#02hhx\n",
    cmd);
  return -EOVERFLOW;
 case 130:
  dev_warn(dev,
    "Parameter access to an invalid location: %#02hhx\n",
    cmd);
  return -EINVAL;
 case 131:
  dev_warn(dev, "Invalid command %#02hhx\n", cmd);
  return -EINVAL;
 default:
  dev_warn(dev, "Unknown error %#02hhx\n", cmd);
  return -EINVAL;
 }
}
