
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t5403_data {int lock; } ;
typedef int s32 ;
typedef int s16 ;


 scalar_t__ T5403_C_U16 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int t5403_read (struct t5403_data*,int) ;

__attribute__((used)) static int t5403_comp_temp(struct t5403_data *data, int *val)
{
 int ret;
 s16 t_r;

 mutex_lock(&data->lock);
 ret = t5403_read(data, 0);
 if (ret < 0)
  goto done;
 t_r = ret;


 *val = ((s32) T5403_C_U16(1) * t_r / 0x100 +
  (s32) T5403_C_U16(2) * 0x40) * 1000 / 0x10000;

done:
 mutex_unlock(&data->lock);
 return ret;
}
