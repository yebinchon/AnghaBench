
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mpl115_data {int b1; int c12; int a0; int b2; int lock; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int ,int ) ;} ;


 int MPL115_PADC ;
 int MPL115_TADC ;
 int mpl115_request (struct mpl115_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static int mpl115_comp_pressure(struct mpl115_data *data, int *val, int *val2)
{
 int ret;
 u16 padc, tadc;
 int a1, y1, pcomp;
 unsigned kpa;

 mutex_lock(&data->lock);
 ret = mpl115_request(data);
 if (ret < 0)
  goto done;

 ret = data->ops->read(data->dev, MPL115_PADC);
 if (ret < 0)
  goto done;
 padc = ret >> 6;

 ret = data->ops->read(data->dev, MPL115_TADC);
 if (ret < 0)
  goto done;
 tadc = ret >> 6;


 a1 = data->b1 + ((data->c12 * tadc) >> 11);
 y1 = (data->a0 << 10) + a1 * padc;


 pcomp = (y1 + ((data->b2 * (int) tadc) >> 1)) >> 9;

 kpa = pcomp * (115 - 50) / 1023 + (50 << 4);
 *val = kpa >> 4;
 *val2 = (kpa & 15) * (1000000 >> 4);
done:
 mutex_unlock(&data->lock);
 return ret;
}
