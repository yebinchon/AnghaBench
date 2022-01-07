
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int regmap; } ;


 int LTR501_PS_DATA ;
 int LTR501_STATUS_PS_RDY ;
 int ltr501_drdy (struct ltr501_data*,int ) ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int ltr501_read_ps(struct ltr501_data *data)
{
 int ret, status;

 ret = ltr501_drdy(data, LTR501_STATUS_PS_RDY);
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, LTR501_PS_DATA,
          &status, 2);
 if (ret < 0)
  return ret;

 return status;
}
