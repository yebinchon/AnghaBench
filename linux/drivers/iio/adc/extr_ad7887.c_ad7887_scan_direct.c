
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7887_state {int* data; int * msg; int spi; } ;


 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7887_scan_direct(struct ad7887_state *st, unsigned ch)
{
 int ret = spi_sync(st->spi, &st->msg[ch]);
 if (ret)
  return ret;

 return (st->data[(ch * 2)] << 8) | st->data[(ch * 2) + 1];
}
