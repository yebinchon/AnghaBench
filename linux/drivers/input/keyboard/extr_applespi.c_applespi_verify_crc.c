
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct applespi_data {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ET_RD_CRC ;
 int READ ;
 scalar_t__ crc16 (int ,int *,size_t) ;
 int dev_warn_ratelimited (int *,char*) ;
 int trace_applespi_bad_crc (int ,int ,int *,size_t) ;

__attribute__((used)) static bool applespi_verify_crc(struct applespi_data *applespi, u8 *buffer,
    size_t buflen)
{
 u16 crc;

 crc = crc16(0, buffer, buflen);
 if (crc) {
  dev_warn_ratelimited(&applespi->spi->dev,
         "Received corrupted packet (crc mismatch)\n");
  trace_applespi_bad_crc(ET_RD_CRC, READ, buffer, buflen);

  return 0;
 }

 return 1;
}
