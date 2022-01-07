
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {int vdd; } ;
struct iio_dev {int dummy; } ;


 struct ms5611_state* iio_priv (struct iio_dev const*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void ms5611_fini(const struct iio_dev *indio_dev)
{
 const struct ms5611_state *st = iio_priv(indio_dev);

 regulator_disable(st->vdd);
}
