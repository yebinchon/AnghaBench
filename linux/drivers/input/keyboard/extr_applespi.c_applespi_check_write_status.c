
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct applespi_data {int tx_status; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int APPLESPI_STATUS_SIZE ;
 int dev_warn (int *,char*,int,...) ;
 scalar_t__ memcmp (int ,int*,int ) ;

__attribute__((used)) static inline bool applespi_check_write_status(struct applespi_data *applespi,
            int sts)
{
 static u8 status_ok[] = { 0xac, 0x27, 0x68, 0xd5 };

 if (sts < 0) {
  dev_warn(&applespi->spi->dev, "Error writing to device: %d\n",
    sts);
  return 0;
 }

 if (memcmp(applespi->tx_status, status_ok, APPLESPI_STATUS_SIZE)) {
  dev_warn(&applespi->spi->dev, "Error writing to device: %*ph\n",
    APPLESPI_STATUS_SIZE, applespi->tx_status);
  return 0;
 }

 return 1;
}
