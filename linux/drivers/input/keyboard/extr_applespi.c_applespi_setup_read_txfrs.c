
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int rx_buf; int delay_usecs; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {int spi_cs_delay; } ;
struct applespi_data {int rx_buffer; TYPE_1__ spi_settings; struct spi_transfer rd_t; struct spi_transfer dl_t; struct spi_message rd_m; } ;


 int APPLESPI_PACKET_SIZE ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;

__attribute__((used)) static void applespi_setup_read_txfrs(struct applespi_data *applespi)
{
 struct spi_message *msg = &applespi->rd_m;
 struct spi_transfer *dl_t = &applespi->dl_t;
 struct spi_transfer *rd_t = &applespi->rd_t;

 memset(dl_t, 0, sizeof(*dl_t));
 memset(rd_t, 0, sizeof(*rd_t));

 dl_t->delay_usecs = applespi->spi_settings.spi_cs_delay;

 rd_t->rx_buf = applespi->rx_buffer;
 rd_t->len = APPLESPI_PACKET_SIZE;

 spi_message_init(msg);
 spi_message_add_tail(dl_t, msg);
 spi_message_add_tail(rd_t, msg);
}
