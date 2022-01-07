
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfi1_devdata {int eprom_available; } ;


 int CR_EPROM ;
 int EBUSY ;
 int ENXIO ;
 int EPROM_TIMEOUT ;
 int EP_PAGE_DWORDS ;
 scalar_t__ EP_PAGE_SIZE ;
 scalar_t__ FOOTER_MAGIC ;
 scalar_t__ SEG_SIZE ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int read_length (struct hfi1_devdata*,scalar_t__,scalar_t__,scalar_t__*) ;
 int read_partition_platform_config (struct hfi1_devdata*,void**,scalar_t__*) ;
 int read_segment_platform_config (struct hfi1_devdata*,scalar_t__*,void**,scalar_t__*) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;

int eprom_read_platform_config(struct hfi1_devdata *dd, void **data, u32 *size)
{
 u32 directory[EP_PAGE_DWORDS];
 int ret;

 if (!dd->eprom_available)
  return -ENXIO;

 ret = acquire_chip_resource(dd, CR_EPROM, EPROM_TIMEOUT);
 if (ret)
  return -EBUSY;


 ret = read_length(dd, SEG_SIZE - EP_PAGE_SIZE, EP_PAGE_SIZE, directory);
 if (ret)
  goto done;


 if (directory[EP_PAGE_DWORDS - 1] == FOOTER_MAGIC) {

  ret = read_segment_platform_config(dd, directory, data, size);
 } else {

  ret = read_partition_platform_config(dd, data, size);
 }

done:
 release_chip_resource(dd, CR_EPROM);
 return ret;
}
