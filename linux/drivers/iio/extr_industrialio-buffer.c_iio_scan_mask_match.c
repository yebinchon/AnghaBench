
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_TO_LONGS (unsigned int) ;
 scalar_t__ bitmap_empty (unsigned long const*,unsigned int) ;
 scalar_t__ bitmap_equal (unsigned long const*,unsigned long const*,unsigned int) ;
 scalar_t__ bitmap_subset (unsigned long const*,unsigned long const*,unsigned int) ;

__attribute__((used)) static const unsigned long *iio_scan_mask_match(const unsigned long *av_masks,
       unsigned int masklength,
       const unsigned long *mask,
       bool strict)
{
 if (bitmap_empty(mask, masklength))
  return ((void*)0);
 while (*av_masks) {
  if (strict) {
   if (bitmap_equal(mask, av_masks, masklength))
    return av_masks;
  } else {
   if (bitmap_subset(mask, av_masks, masklength))
    return av_masks;
  }
  av_masks += BITS_TO_LONGS(masklength);
 }
 return ((void*)0);
}
