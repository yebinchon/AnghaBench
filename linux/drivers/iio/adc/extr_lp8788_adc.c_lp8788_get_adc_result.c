
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_adc {int lp; } ;
typedef enum lp8788_adc_id { ____Placeholder_lp8788_adc_id } lp8788_adc_id ;


 int ADC_CONV_START ;
 int ARRAY_SIZE (int*) ;
 int LP8788_ADC_CONF ;
 int LP8788_ADC_DONE ;
 int LP8788_ADC_RAW ;
 int lp8788_read_byte (int ,int ,int*) ;
 int lp8788_read_multi_bytes (int ,int ,int*,int) ;
 int lp8788_write_byte (int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lp8788_get_adc_result(struct lp8788_adc *adc, enum lp8788_adc_id id,
    int *val)
{
 unsigned int msb;
 unsigned int lsb;
 unsigned int result;
 u8 data;
 u8 rawdata[2];
 int size = ARRAY_SIZE(rawdata);
 int retry = 5;
 int ret;

 data = (id << 1) | ADC_CONV_START;
 ret = lp8788_write_byte(adc->lp, LP8788_ADC_CONF, data);
 if (ret)
  goto err_io;


 data = 0;
 while (retry--) {
  usleep_range(100, 200);

  ret = lp8788_read_byte(adc->lp, LP8788_ADC_DONE, &data);
  if (ret)
   goto err_io;


  if (data)
   break;
 }

 ret = lp8788_read_multi_bytes(adc->lp, LP8788_ADC_RAW, rawdata, size);
 if (ret)
  goto err_io;

 msb = (rawdata[0] << 4) & 0x00000ff0;
 lsb = (rawdata[1] >> 4) & 0x0000000f;
 result = msb | lsb;
 *val = result;

 return 0;

err_io:
 return ret;
}
