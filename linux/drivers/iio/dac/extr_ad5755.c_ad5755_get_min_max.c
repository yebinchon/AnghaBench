
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {size_t channel; } ;
struct ad5755_state {int* ctrl; } ;
typedef enum ad5755_mode { ____Placeholder_ad5755_mode } ad5755_mode ;


 int** ad5755_min_max_table ;

__attribute__((used)) static void ad5755_get_min_max(struct ad5755_state *st,
 struct iio_chan_spec const *chan, int *min, int *max)
{
 enum ad5755_mode mode = st->ctrl[chan->channel] & 7;
 *min = ad5755_min_max_table[mode][0];
 *max = ad5755_min_max_table[mode][1];
}
