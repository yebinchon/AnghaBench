
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {scalar_t__ val_status; } ;


 int SHT15_SOFT_RESET ;
 int SHT15_TSRST ;
 int msleep (int ) ;
 int sht15_send_cmd (struct sht15_data*,int ) ;

__attribute__((used)) static int sht15_soft_reset(struct sht15_data *data)
{
 int ret;

 ret = sht15_send_cmd(data, SHT15_SOFT_RESET);
 if (ret)
  return ret;
 msleep(SHT15_TSRST);

 data->val_status = 0;

 return ret;
}
