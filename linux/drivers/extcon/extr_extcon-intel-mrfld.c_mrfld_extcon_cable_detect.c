
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mrfld_extcon_data {unsigned int status; struct regmap* regmap; } ;


 unsigned int BCOVE_CHGRIRQ_USBIDDET ;
 int BCOVE_SCHGRIRQ1 ;
 int ENODATA ;
 int mrfld_extcon_role_detect (struct mrfld_extcon_data*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int mrfld_extcon_cable_detect(struct mrfld_extcon_data *data)
{
 struct regmap *regmap = data->regmap;
 unsigned int status, change;
 int ret;






 ret = regmap_read(regmap, BCOVE_SCHGRIRQ1, &status);
 if (ret)
  return ret;

 change = status ^ data->status;
 if (!change)
  return -ENODATA;

 if (change & BCOVE_CHGRIRQ_USBIDDET) {
  ret = mrfld_extcon_role_detect(data);
  if (ret)
   return ret;
 }

 data->status = status;

 return 0;
}
