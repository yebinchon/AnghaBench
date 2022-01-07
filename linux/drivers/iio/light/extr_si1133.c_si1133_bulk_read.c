
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1133_data {int regmap; } ;


 int regmap_bulk_read (int ,int ,int *,int ) ;
 int si1133_force_measurement (struct si1133_data*) ;

__attribute__((used)) static int si1133_bulk_read(struct si1133_data *data, u8 start_reg, u8 length,
       u8 *buffer)
{
 int err;

 err = si1133_force_measurement(data);
 if (err)
  return err;

 return regmap_bulk_read(data->regmap, start_reg, buffer, length);
}
