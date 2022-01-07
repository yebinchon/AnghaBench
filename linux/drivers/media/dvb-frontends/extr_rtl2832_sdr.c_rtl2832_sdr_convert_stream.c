
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl2832_sdr_dev {scalar_t__ pixelformat; unsigned int sample; unsigned int sample_measured; scalar_t__ jiffies_next; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;


 int MSECS ;
 scalar_t__ V4L2_SDR_FMT_CU16LE ;
 scalar_t__ V4L2_SDR_FMT_CU8 ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ jiffies ;
 unsigned int jiffies_to_msecs (scalar_t__) ;
 int memcpy (void*,int const*,unsigned int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int time_is_before_jiffies (scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int rtl2832_sdr_convert_stream(struct rtl2832_sdr_dev *dev,
  void *dst, const u8 *src, unsigned int src_len)
{
 struct platform_device *pdev = dev->pdev;
 unsigned int dst_len;

 if (dev->pixelformat == V4L2_SDR_FMT_CU8) {

  memcpy(dst, src, src_len);
  dst_len = src_len;
 } else if (dev->pixelformat == V4L2_SDR_FMT_CU16LE) {

  unsigned int i;
  u16 *u16dst = dst;

  for (i = 0; i < src_len; i++)
   *u16dst++ = (src[i] << 8) | (src[i] >> 0);
  dst_len = 2 * src_len;
 } else {
  dst_len = 0;
 }


 if (unlikely(time_is_before_jiffies(dev->jiffies_next))) {

  unsigned int msecs = jiffies_to_msecs(jiffies -
    dev->jiffies_next + msecs_to_jiffies(10000UL));
  unsigned int samples = dev->sample - dev->sample_measured;

  dev->jiffies_next = jiffies + msecs_to_jiffies(10000UL);
  dev->sample_measured = dev->sample;
  dev_dbg(&pdev->dev,
   "slen=%u samples=%u msecs=%u sample rate=%lu\n",
   src_len, samples, msecs, samples * 1000UL / msecs);
 }


 dev->sample += src_len / 2;

 return dst_len;
}
