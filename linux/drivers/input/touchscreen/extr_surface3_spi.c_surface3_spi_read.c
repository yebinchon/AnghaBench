
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_ts_data {int rd_buf; struct spi_device* spi; } ;
struct spi_device {int dummy; } ;


 int memset (int ,int ,int) ;
 int spi_read (struct spi_device*,int ,int) ;

__attribute__((used)) static int surface3_spi_read(struct surface3_ts_data *ts_data)
{
 struct spi_device *spi = ts_data->spi;

 memset(ts_data->rd_buf, 0, sizeof(ts_data->rd_buf));
 return spi_read(spi, ts_data->rd_buf, sizeof(ts_data->rd_buf));
}
