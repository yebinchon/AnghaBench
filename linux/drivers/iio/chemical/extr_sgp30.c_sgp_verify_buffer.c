
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union sgp_reading {int start; } ;
typedef int u8 ;
struct sgp_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int SGP_CRC8_INIT ;
 size_t SGP_CRC8_LEN ;
 size_t SGP_WORD_LEN ;
 int crc8 (int ,int *,size_t,int ) ;
 int dev_err (int *,char*) ;
 int sgp_crc8_table ;

__attribute__((used)) static int sgp_verify_buffer(const struct sgp_data *data,
        union sgp_reading *buf, size_t word_count)
{
 size_t size = word_count * (SGP_WORD_LEN + SGP_CRC8_LEN);
 int i;
 u8 crc;
 u8 *data_buf = &buf->start;

 for (i = 0; i < size; i += SGP_WORD_LEN + SGP_CRC8_LEN) {
  crc = crc8(sgp_crc8_table, &data_buf[i], SGP_WORD_LEN,
      SGP_CRC8_INIT);
  if (crc != data_buf[i + SGP_WORD_LEN]) {
   dev_err(&data->client->dev, "CRC error\n");
   return -EIO;
  }
 }

 return 0;
}
