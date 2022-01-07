
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct max1363_state {TYPE_1__* chip_info; } ;
struct iio_dev {unsigned long* available_scan_masks; int dev; } ;
struct TYPE_4__ {int modemask; } ;
struct TYPE_3__ {int num_modes; size_t* mode_list; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX1363_MAX_CHANNELS ;
 int array3_size (int,int,int) ;
 int bitmap_copy (unsigned long*,int ,int ) ;
 unsigned long* devm_kzalloc (int *,int ,int ) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 TYPE_2__* max1363_mode_table ;

__attribute__((used)) static int max1363_alloc_scan_masks(struct iio_dev *indio_dev)
{
 struct max1363_state *st = iio_priv(indio_dev);
 unsigned long *masks;
 int i;

 masks = devm_kzalloc(&indio_dev->dev,
   array3_size(BITS_TO_LONGS(MAX1363_MAX_CHANNELS),
        sizeof(long),
        st->chip_info->num_modes + 1),
   GFP_KERNEL);
 if (!masks)
  return -ENOMEM;

 for (i = 0; i < st->chip_info->num_modes; i++)
  bitmap_copy(masks + BITS_TO_LONGS(MAX1363_MAX_CHANNELS)*i,
       max1363_mode_table[st->chip_info->mode_list[i]]
       .modemask, MAX1363_MAX_CHANNELS);

 indio_dev->available_scan_masks = masks;

 return 0;
}
