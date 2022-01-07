
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int masklength; scalar_t__ available_scan_masks; } ;
struct iio_buffer {unsigned long* scan_mask; } ;


 int BITS_TO_LONGS (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN (int,char*) ;
 int bitmap_copy (unsigned long*,unsigned long*,int ) ;
 int bitmap_free (unsigned long*) ;
 unsigned long* iio_scan_mask_match (scalar_t__,int ,unsigned long*,int) ;
 int iio_validate_scan_mask (struct iio_dev*,unsigned long*) ;
 unsigned long* kcalloc (int ,int,int ) ;
 int set_bit (int,unsigned long*) ;

__attribute__((used)) static int iio_scan_mask_set(struct iio_dev *indio_dev,
        struct iio_buffer *buffer, int bit)
{
 const unsigned long *mask;
 unsigned long *trialmask;

 trialmask = kcalloc(BITS_TO_LONGS(indio_dev->masklength),
       sizeof(*trialmask), GFP_KERNEL);
 if (trialmask == ((void*)0))
  return -ENOMEM;
 if (!indio_dev->masklength) {
  WARN(1, "Trying to set scanmask prior to registering buffer\n");
  goto err_invalid_mask;
 }
 bitmap_copy(trialmask, buffer->scan_mask, indio_dev->masklength);
 set_bit(bit, trialmask);

 if (!iio_validate_scan_mask(indio_dev, trialmask))
  goto err_invalid_mask;

 if (indio_dev->available_scan_masks) {
  mask = iio_scan_mask_match(indio_dev->available_scan_masks,
        indio_dev->masklength,
        trialmask, 0);
  if (!mask)
   goto err_invalid_mask;
 }
 bitmap_copy(buffer->scan_mask, trialmask, indio_dev->masklength);

 bitmap_free(trialmask);

 return 0;

err_invalid_mask:
 bitmap_free(trialmask);
 return -EINVAL;
}
