
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int sck; int data; } ;


 int SHT15_TSCKH ;
 int SHT15_TSCKL ;
 int gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 int ndelay (int ) ;

__attribute__((used)) static u8 sht15_read_byte(struct sht15_data *data)
{
 int i;
 u8 byte = 0;

 for (i = 0; i < 8; ++i) {
  byte <<= 1;
  gpiod_set_value(data->sck, 1);
  ndelay(SHT15_TSCKH);
  byte |= !!gpiod_get_value(data->data);
  gpiod_set_value(data->sck, 0);
  ndelay(SHT15_TSCKL);
 }
 return byte;
}
