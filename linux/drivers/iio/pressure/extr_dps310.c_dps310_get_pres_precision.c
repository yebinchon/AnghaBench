
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dps310_data {int regmap; } ;


 int BIT (int) ;
 int DPS310_PRS_CFG ;
 int GENMASK (int,int ) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int dps310_get_pres_precision(struct dps310_data *data)
{
 int rc;
 int val;

 rc = regmap_read(data->regmap, DPS310_PRS_CFG, &val);
 if (rc < 0)
  return rc;

 return BIT(val & GENMASK(2, 0));
}
