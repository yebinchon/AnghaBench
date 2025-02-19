
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int channel_attr_list; int dev; } ;
struct iio_chan_spec_ext_info {int shared; scalar_t__ write; scalar_t__ read; scalar_t__ name; } ;
struct iio_chan_spec {scalar_t__ channel; struct iio_chan_spec_ext_info* ext_info; int info_mask_shared_by_all_available; int info_mask_shared_by_all; int info_mask_shared_by_dir_available; int info_mask_shared_by_dir; int info_mask_shared_by_type_available; int info_mask_shared_by_type; int info_mask_separate_available; int info_mask_separate; } ;


 int EBUSY ;
 int IIO_SEPARATE ;
 int IIO_SHARED_BY_ALL ;
 int IIO_SHARED_BY_DIR ;
 int IIO_SHARED_BY_TYPE ;
 int __iio_add_chan_devattr (scalar_t__,struct iio_chan_spec const*,int *,int *,unsigned int,int ,int *,int *) ;
 int iio_device_add_info_mask_type (struct iio_dev*,struct iio_chan_spec const*,int ,int *) ;
 int iio_device_add_info_mask_type_avail (struct iio_dev*,struct iio_chan_spec const*,int ,int *) ;
 int iio_read_channel_ext_info ;
 int iio_write_channel_ext_info ;

__attribute__((used)) static int iio_device_add_channel_sysfs(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan)
{
 int ret, attrcount = 0;
 const struct iio_chan_spec_ext_info *ext_info;

 if (chan->channel < 0)
  return 0;
 ret = iio_device_add_info_mask_type(indio_dev, chan,
         IIO_SEPARATE,
         &chan->info_mask_separate);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type_avail(indio_dev, chan,
        IIO_SEPARATE,
        &chan->
        info_mask_separate_available);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type(indio_dev, chan,
         IIO_SHARED_BY_TYPE,
         &chan->info_mask_shared_by_type);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type_avail(indio_dev, chan,
        IIO_SHARED_BY_TYPE,
        &chan->
        info_mask_shared_by_type_available);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type(indio_dev, chan,
         IIO_SHARED_BY_DIR,
         &chan->info_mask_shared_by_dir);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type_avail(indio_dev, chan,
        IIO_SHARED_BY_DIR,
        &chan->info_mask_shared_by_dir_available);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type(indio_dev, chan,
         IIO_SHARED_BY_ALL,
         &chan->info_mask_shared_by_all);
 if (ret < 0)
  return ret;
 attrcount += ret;

 ret = iio_device_add_info_mask_type_avail(indio_dev, chan,
        IIO_SHARED_BY_ALL,
        &chan->info_mask_shared_by_all_available);
 if (ret < 0)
  return ret;
 attrcount += ret;

 if (chan->ext_info) {
  unsigned int i = 0;
  for (ext_info = chan->ext_info; ext_info->name; ext_info++) {
   ret = __iio_add_chan_devattr(ext_info->name,
     chan,
     ext_info->read ?
         &iio_read_channel_ext_info : ((void*)0),
     ext_info->write ?
         &iio_write_channel_ext_info : ((void*)0),
     i,
     ext_info->shared,
     &indio_dev->dev,
     &indio_dev->channel_attr_list);
   i++;
   if (ret == -EBUSY && ext_info->shared)
    continue;

   if (ret)
    return ret;

   attrcount++;
  }
 }

 return attrcount;
}
