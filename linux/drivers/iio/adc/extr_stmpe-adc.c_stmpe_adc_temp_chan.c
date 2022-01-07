
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int indexed; int channel; int info_mask_separate; int type; } ;


 int BIT (int ) ;
 int IIO_CHAN_INFO_PROCESSED ;
 int IIO_TEMP ;

__attribute__((used)) static void stmpe_adc_temp_chan(struct iio_chan_spec *ics, int chan)
{
 ics->type = IIO_TEMP;
 ics->info_mask_separate = BIT(IIO_CHAN_INFO_PROCESSED);
 ics->indexed = 1;
 ics->channel = chan;
}
