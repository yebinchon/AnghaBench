
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7476_state {int data; int spi; } ;


 int spi_read (int ,int ,int) ;

__attribute__((used)) static void ad7091_reset(struct ad7476_state *st)
{

 spi_read(st->spi, st->data, 1);
}
