
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nct7802_data {int access_lock; int regmap; } ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int REG_FANCOUNT_LOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int nct7802_read_fan(struct nct7802_data *data, u8 reg_fan)
{
 unsigned int f1, f2;
 int ret;

 mutex_lock(&data->access_lock);
 ret = regmap_read(data->regmap, reg_fan, &f1);
 if (ret < 0)
  goto abort;
 ret = regmap_read(data->regmap, REG_FANCOUNT_LOW, &f2);
 if (ret < 0)
  goto abort;
 ret = (f1 << 5) | (f2 >> 3);

 if (ret == 0x1fff)
  ret = 0;
 else if (ret)
  ret = DIV_ROUND_CLOSEST(1350000U, ret);
abort:
 mutex_unlock(&data->access_lock);
 return ret;
}
