
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_device {struct iio_dev* device; } ;
struct iio_dummy_state {int lock; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct iio_sw_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INDIO_DIRECT_MODE ;
 struct iio_dev* iio_device_alloc (int) ;
 int iio_device_free (struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 int iio_dummy_channels ;
 int iio_dummy_info ;
 int iio_dummy_init_device (struct iio_dev*) ;
 int iio_dummy_type ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;
 int iio_simple_dummy_configure_buffer (struct iio_dev*) ;
 int iio_simple_dummy_events_register (struct iio_dev*) ;
 int iio_simple_dummy_events_unregister (struct iio_dev*) ;
 int iio_simple_dummy_unconfigure_buffer (struct iio_dev*) ;
 int iio_swd_group_init_type_name (struct iio_sw_device*,char const*,int *) ;
 int kfree (struct iio_sw_device*) ;
 int kstrdup (char const*,int ) ;
 struct iio_sw_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct iio_sw_device *iio_dummy_probe(const char *name)
{
 int ret;
 struct iio_dev *indio_dev;
 struct iio_dummy_state *st;
 struct iio_sw_device *swd;

 swd = kzalloc(sizeof(*swd), GFP_KERNEL);
 if (!swd) {
  ret = -ENOMEM;
  goto error_kzalloc;
 }
 indio_dev = iio_device_alloc(sizeof(*st));
 if (!indio_dev) {
  ret = -ENOMEM;
  goto error_ret;
 }

 st = iio_priv(indio_dev);
 mutex_init(&st->lock);

 iio_dummy_init_device(indio_dev);
 swd->device = indio_dev;
 indio_dev->name = kstrdup(name, GFP_KERNEL);


 indio_dev->channels = iio_dummy_channels;
 indio_dev->num_channels = ARRAY_SIZE(iio_dummy_channels);





 indio_dev->info = &iio_dummy_info;


 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = iio_simple_dummy_events_register(indio_dev);
 if (ret < 0)
  goto error_free_device;

 ret = iio_simple_dummy_configure_buffer(indio_dev);
 if (ret < 0)
  goto error_unregister_events;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto error_unconfigure_buffer;

 iio_swd_group_init_type_name(swd, name, &iio_dummy_type);

 return swd;
error_unconfigure_buffer:
 iio_simple_dummy_unconfigure_buffer(indio_dev);
error_unregister_events:
 iio_simple_dummy_events_unregister(indio_dev);
error_free_device:
 iio_device_free(indio_dev);
error_ret:
 kfree(swd);
error_kzalloc:
 return ERR_PTR(ret);
}
