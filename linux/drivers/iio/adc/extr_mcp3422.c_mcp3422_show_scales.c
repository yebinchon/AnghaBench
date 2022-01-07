
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mcp3422 {int config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t MCP3422_SAMPLE_RATE (int ) ;
 int dev_to_iio_dev (struct device*) ;
 struct mcp3422* iio_priv (int ) ;
 int** mcp3422_scales ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t mcp3422_show_scales(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct mcp3422 *adc = iio_priv(dev_to_iio_dev(dev));
 u8 sample_rate = MCP3422_SAMPLE_RATE(adc->config);

 return sprintf(buf, "0.%09u 0.%09u 0.%09u 0.%09u\n",
  mcp3422_scales[sample_rate][0],
  mcp3422_scales[sample_rate][1],
  mcp3422_scales[sample_rate][2],
  mcp3422_scales[sample_rate][3]);
}
