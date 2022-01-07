
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int dummy; } ;


 int sht15_send_bit (struct sht15_data*,int) ;

__attribute__((used)) static void sht15_send_byte(struct sht15_data *data, u8 byte)
{
 int i;

 for (i = 0; i < 8; i++) {
  sht15_send_bit(data, !!(byte & 0x80));
  byte <<= 1;
 }
}
