
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltr501_data {int regmap; } ;
typedef int __le16 ;


 int LTR501_ALS_DATA1 ;
 int LTR501_STATUS_ALS_RDY ;
 int ltr501_drdy (struct ltr501_data*,int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int ltr501_read_als(struct ltr501_data *data, __le16 buf[2])
{
 int ret;

 ret = ltr501_drdy(data, LTR501_STATUS_ALS_RDY);
 if (ret < 0)
  return ret;

 return regmap_bulk_read(data->regmap, LTR501_ALS_DATA1,
    buf, 2 * sizeof(__le16));
}
