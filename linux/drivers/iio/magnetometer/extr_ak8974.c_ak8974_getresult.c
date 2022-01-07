
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ak8974 {int map; TYPE_1__* i2c; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int AK8974_DATA_X ;
 unsigned int AK8974_INT_RANGE ;
 int AK8974_INT_SRC ;
 int ERANGE ;
 int ak8974_await_drdy (struct ak8974*) ;
 int dev_err (int *,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ak8974_getresult(struct ak8974 *ak8974, __le16 *result)
{
 unsigned int src;
 int ret;

 ret = ak8974_await_drdy(ak8974);
 if (ret)
  return ret;
 ret = regmap_read(ak8974->map, AK8974_INT_SRC, &src);
 if (ret < 0)
  return ret;


 if (src & AK8974_INT_RANGE) {
  dev_err(&ak8974->i2c->dev,
   "range overflow in sensor\n");
  return -ERANGE;
 }

 ret = regmap_bulk_read(ak8974->map, AK8974_DATA_X, result, 6);
 if (ret)
  return ret;

 return ret;
}
