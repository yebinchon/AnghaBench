
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ad_sigma_delta {int spi; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (unsigned int,int,int ) ;
 int kfree (int *) ;
 int memset (int *,int,unsigned int) ;
 int spi_write (int ,int *,unsigned int) ;

int ad_sd_reset(struct ad_sigma_delta *sigma_delta,
 unsigned int reset_length)
{
 uint8_t *buf;
 unsigned int size;
 int ret;

 size = DIV_ROUND_UP(reset_length, 8);
 buf = kcalloc(size, sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 memset(buf, 0xff, size);
 ret = spi_write(sigma_delta->spi, buf, size);
 kfree(buf);

 return ret;
}
