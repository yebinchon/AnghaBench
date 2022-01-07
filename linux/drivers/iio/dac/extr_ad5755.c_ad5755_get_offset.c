
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int realbits; } ;
struct iio_chan_spec {TYPE_1__ scan_type; } ;
struct ad5755_state {int dummy; } ;


 int ad5755_get_min_max (struct ad5755_state*,struct iio_chan_spec const*,int*,int*) ;

__attribute__((used)) static inline int ad5755_get_offset(struct ad5755_state *st,
 struct iio_chan_spec const *chan)
{
 int min, max;

 ad5755_get_min_max(st, chan, &min, &max);
 return (min * (1 << chan->scan_type.realbits)) / (max - min);
}
