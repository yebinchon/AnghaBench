
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {int current_mode; int chip_info; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int max1363_match_mode (unsigned long const*,int ) ;
 int max1363_set_scan_mode (struct max1363_state*) ;

__attribute__((used)) static int max1363_update_scan_mode(struct iio_dev *indio_dev,
        const unsigned long *scan_mask)
{
 struct max1363_state *st = iio_priv(indio_dev);





 st->current_mode = max1363_match_mode(scan_mask, st->chip_info);
 if (!st->current_mode)
  return -EINVAL;
 max1363_set_scan_mode(st);
 return 0;
}
