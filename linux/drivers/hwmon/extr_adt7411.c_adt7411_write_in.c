
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int adt7411_write_in_chan (struct device*,int ,int,long) ;
 int adt7411_write_in_vdd (struct device*,int ,long) ;

__attribute__((used)) static int adt7411_write_in(struct device *dev, u32 attr, int channel,
       long val)
{
 if (channel == 0)
  return adt7411_write_in_vdd(dev, attr, val);
 else
  return adt7411_write_in_chan(dev, attr, channel, val);
}
