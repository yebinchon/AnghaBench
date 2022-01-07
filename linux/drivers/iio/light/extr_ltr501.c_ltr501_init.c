
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltr501_data {int als_contr; int ps_contr; int ps_period; int als_period; int regmap; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int als_mode_active; } ;


 int IIO_INTENSITY ;
 int IIO_PROXIMITY ;
 int LTR501_ALS_CONTR ;
 int LTR501_CONTR_ACTIVE ;
 int LTR501_PS_CONTR ;
 int ltr501_read_intr_prst (struct ltr501_data*,int ,int *) ;
 int ltr501_write_contr (struct ltr501_data*,int,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int ltr501_init(struct ltr501_data *data)
{
 int ret, status;

 ret = regmap_read(data->regmap, LTR501_ALS_CONTR, &status);
 if (ret < 0)
  return ret;

 data->als_contr = status | data->chip_info->als_mode_active;

 ret = regmap_read(data->regmap, LTR501_PS_CONTR, &status);
 if (ret < 0)
  return ret;

 data->ps_contr = status | LTR501_CONTR_ACTIVE;

 ret = ltr501_read_intr_prst(data, IIO_INTENSITY, &data->als_period);
 if (ret < 0)
  return ret;

 ret = ltr501_read_intr_prst(data, IIO_PROXIMITY, &data->ps_period);
 if (ret < 0)
  return ret;

 return ltr501_write_contr(data, data->als_contr, data->ps_contr);
}
