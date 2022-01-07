
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxc4005_data {int dev; scalar_t__ buffer; int regmap; } ;


 int MXC4005_REG_XOUT_UPPER ;
 int dev_err (int ,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int mxc4005_read_xyz(struct mxc4005_data *data)
{
 int ret;

 ret = regmap_bulk_read(data->regmap, MXC4005_REG_XOUT_UPPER,
          (u8 *) data->buffer, sizeof(data->buffer));
 if (ret < 0) {
  dev_err(data->dev, "failed to read axes\n");
  return ret;
 }

 return 0;
}
