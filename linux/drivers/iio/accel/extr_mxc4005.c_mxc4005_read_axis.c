
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxc4005_data {int dev; int regmap; } ;
typedef int reg ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int regmap_bulk_read (int ,unsigned int,int *,int) ;

__attribute__((used)) static int mxc4005_read_axis(struct mxc4005_data *data,
        unsigned int addr)
{
 __be16 reg;
 int ret;

 ret = regmap_bulk_read(data->regmap, addr, (u8 *) &reg, sizeof(reg));
 if (ret < 0) {
  dev_err(data->dev, "failed to read reg %02x\n", addr);
  return ret;
 }

 return be16_to_cpu(reg);
}
