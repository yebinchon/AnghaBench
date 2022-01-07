
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpl115_data {int lock; int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read ) (int ,int ) ;} ;


 int MPL115_TADC ;
 int mpl115_request (struct mpl115_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int mpl115_read_temp(struct mpl115_data *data)
{
 int ret;

 mutex_lock(&data->lock);
 ret = mpl115_request(data);
 if (ret < 0)
  goto done;
 ret = data->ops->read(data->dev, MPL115_TADC);
done:
 mutex_unlock(&data->lock);
 return ret;
}
