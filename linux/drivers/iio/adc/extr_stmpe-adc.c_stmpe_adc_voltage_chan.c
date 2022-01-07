
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int indexed; int channel; void* info_mask_shared_by_type; void* info_mask_separate; int type; } ;


 void* BIT (int ) ;
 int IIO_CHAN_INFO_RAW ;
 int IIO_CHAN_INFO_SCALE ;
 int IIO_VOLTAGE ;

__attribute__((used)) static void stmpe_adc_voltage_chan(struct iio_chan_spec *ics, int chan)
{
 ics->type = IIO_VOLTAGE;
 ics->info_mask_separate = BIT(IIO_CHAN_INFO_RAW);
 ics->info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE);
 ics->indexed = 1;
 ics->channel = chan;
}
