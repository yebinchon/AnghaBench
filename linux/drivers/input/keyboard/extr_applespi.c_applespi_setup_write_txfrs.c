
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int cs_change; int len; int rx_buf; void* delay_usecs; int tx_buf; } ;
struct spi_message {int dummy; } ;
struct TYPE_2__ {void* spi_cs_delay; } ;
struct applespi_data {int tx_status; int tx_buffer; TYPE_1__ spi_settings; struct spi_transfer st_t; struct spi_transfer wr_t; struct spi_transfer wd_t; struct spi_transfer ww_t; struct spi_message wr_m; } ;


 int APPLESPI_PACKET_SIZE ;
 int APPLESPI_STATUS_SIZE ;
 void* SPI_RW_CHG_DELAY_US ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;

__attribute__((used)) static void applespi_setup_write_txfrs(struct applespi_data *applespi)
{
 struct spi_message *msg = &applespi->wr_m;
 struct spi_transfer *wt_t = &applespi->ww_t;
 struct spi_transfer *dl_t = &applespi->wd_t;
 struct spi_transfer *wr_t = &applespi->wr_t;
 struct spi_transfer *st_t = &applespi->st_t;

 memset(wt_t, 0, sizeof(*wt_t));
 memset(dl_t, 0, sizeof(*dl_t));
 memset(wr_t, 0, sizeof(*wr_t));
 memset(st_t, 0, sizeof(*st_t));







 wt_t->delay_usecs = SPI_RW_CHG_DELAY_US;
 wt_t->cs_change = 1;

 dl_t->delay_usecs = applespi->spi_settings.spi_cs_delay;

 wr_t->tx_buf = applespi->tx_buffer;
 wr_t->len = APPLESPI_PACKET_SIZE;
 wr_t->delay_usecs = SPI_RW_CHG_DELAY_US;

 st_t->rx_buf = applespi->tx_status;
 st_t->len = APPLESPI_STATUS_SIZE;

 spi_message_init(msg);
 spi_message_add_tail(wt_t, msg);
 spi_message_add_tail(dl_t, msg);
 spi_message_add_tail(wr_t, msg);
 spi_message_add_tail(st_t, msg);
}
