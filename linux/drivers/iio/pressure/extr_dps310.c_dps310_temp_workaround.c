
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int regmap; } ;


 int BIT (int) ;
 int regmap_read (int ,int,int*) ;
 int regmap_write (int ,int,int) ;

__attribute__((used)) static int dps310_temp_workaround(struct dps310_data *data)
{
 int rc;
 int reg;

 rc = regmap_read(data->regmap, 0x32, &reg);
 if (rc < 0)
  return rc;





 if (reg & BIT(1))
  return 0;

 rc = regmap_write(data->regmap, 0x0e, 0xA5);
 if (rc < 0)
  return rc;

 rc = regmap_write(data->regmap, 0x0f, 0x96);
 if (rc < 0)
  return rc;

 rc = regmap_write(data->regmap, 0x62, 0x02);
 if (rc < 0)
  return rc;

 rc = regmap_write(data->regmap, 0x0e, 0x00);
 if (rc < 0)
  return rc;

 return regmap_write(data->regmap, 0x0f, 0x00);
}
