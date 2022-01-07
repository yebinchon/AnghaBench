
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_map_internal {int l; struct iio_dev* indio_dev; struct iio_map* map; } ;
struct iio_map {int * consumer_dev_name; } ;
struct iio_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int iio_map_list ;
 int iio_map_list_lock ;
 struct iio_map_internal* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int iio_map_array_register(struct iio_dev *indio_dev, struct iio_map *maps)
{
 int i = 0, ret = 0;
 struct iio_map_internal *mapi;

 if (maps == ((void*)0))
  return 0;

 mutex_lock(&iio_map_list_lock);
 while (maps[i].consumer_dev_name != ((void*)0)) {
  mapi = kzalloc(sizeof(*mapi), GFP_KERNEL);
  if (mapi == ((void*)0)) {
   ret = -ENOMEM;
   goto error_ret;
  }
  mapi->map = &maps[i];
  mapi->indio_dev = indio_dev;
  list_add_tail(&mapi->l, &iio_map_list);
  i++;
 }
error_ret:
 mutex_unlock(&iio_map_list_lock);

 return ret;
}
