
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int masklength; } ;
struct ad7266_state {int dummy; } ;


 int ad7266_select_input (struct ad7266_state*,unsigned int) ;
 unsigned int find_first_bit (unsigned long const*,int ) ;
 struct ad7266_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7266_update_scan_mode(struct iio_dev *indio_dev,
 const unsigned long *scan_mask)
{
 struct ad7266_state *st = iio_priv(indio_dev);
 unsigned int nr = find_first_bit(scan_mask, indio_dev->masklength);

 ad7266_select_input(st, nr);

 return 0;
}
