
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gp2ap020a00f_data {int regmap; TYPE_1__* client; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int le16_to_cpup (int *) ;
 int regmap_bulk_read (int ,unsigned int,int *,int) ;
 int wait_conversion_complete_irq (struct gp2ap020a00f_data*) ;

__attribute__((used)) static int gp2ap020a00f_read_output(struct gp2ap020a00f_data *data,
     unsigned int output_reg, int *val)
{
 u8 reg_buf[2];
 int err;

 err = wait_conversion_complete_irq(data);
 if (err < 0)
  dev_dbg(&data->client->dev, "data ready timeout\n");

 err = regmap_bulk_read(data->regmap, output_reg, reg_buf, 2);
 if (err < 0)
  return err;

 *val = le16_to_cpup((__le16 *)reg_buf);

 return err;
}
