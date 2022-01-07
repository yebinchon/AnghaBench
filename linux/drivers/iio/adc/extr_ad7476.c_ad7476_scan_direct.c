
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7476_state {scalar_t__ data; int msg; int spi; } ;
typedef int __be16 ;


 int be16_to_cpup (int *) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7476_scan_direct(struct ad7476_state *st)
{
 int ret;

 ret = spi_sync(st->spi, &st->msg);
 if (ret)
  return ret;

 return be16_to_cpup((__be16 *)st->data);
}
